api = freeswitch.API();
callee = argv[1];
gateway = argv[2];
code = argv[3];
bg = argv[4];
bgapi = "bgapi "
if bg == "false" then
	bgapi = ""
end
reply = api:executeString(bgapi.."originate {code="..code..",ignore_early_media=true}sofia/external/"..callee.."@"..gateway.." &lua(play_code.lua)");
stream:write(reply);

