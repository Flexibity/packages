#!/usr/bin/lua

http = require("socket.http")
ltn12 = require("ltn12")
json = require("json");
uci = require("uci");
sys = require("luci.sys");
cursor = uci.cursor();
sensors = {};
servers = {};

-- read configuration and create a list of sensors
cursor:foreach("sensors", "sensor",
        function(section)
                sensors[section[".name"]] = {
			ip6addr = section["ip6addr"],
			id = section["id"]
		};
        end
)

-- for each sensor, read the data
for s,p in pairs(sensors) do
	print("Query http://"..p["ip6addr"].."/data");
	local data = sys.httpget("http://"..p["ip6addr"].."/data");
	print("Received "..data);
	if data and data ~= "" then
		sensors[s]["data"] = json.decode(data);
	else
		sensors[s]["data"] = nil;
	end
	data = nil;
end

-- for each sensor, push the data upstream
cursor:foreach("sensors", "server",
	function(section)
                servers[section[".name"]] = {
			enabled = section["enabled"],
			host = section["host"],
			port = section["port"],
			interval = section["interval"],
			proto = section["proto"],
			id = section["id"]
		};
		for s,p in pairs(servers) do
			if p["enabled"] == "1" then
				if p["proto"] == "cosm" then
					for n,d in pairs(sensors) do
						if d["data"] then
							local req = json.encode({
                                                                datastreams = {
                                                                        { id = "temperature", current_value = d["data"]["temp"] },
                                                                        { id = "humidity", current_value = d["data"]["hum"] },
                                                                        { id = "pressure", current_value = d["data"]["pres"] }
                                                                }
							});
							local url =  p["host"]..":"..p["port"].."/v2/feeds/"..d["id"];
							print(url.." = "..req);
							local resp;
							local b,c,h = http.request{
								url = url,
								method = "POST",
								headers = {
									["Content-Length"] = string.len(req),
									["Content-Type"] = "application/json",
									["X-ApiKey"] = p["id"]
								},
								source = ltn12.source.string(req),
								sink = ltn12.sink.table(resp)
							};
						end
					end
				else
					print("Protocol "..p["proto"].." is not supported");
				end
			else
				print("Server "..s.." is disabled");
			end
		end
	end
)

print (json.encode(sensors))
print (json.encode(servers))

