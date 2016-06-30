do function run(msg, matches)
if matches[1]:lower() == 'id' then
local text = "["..msg.from.print_name.."](https://telegram.me/"..msg.from.username..")\n*Your ID* : _"..msg.from.id.."_\n*Group Name* : _"..msg.to.print_name.."_\n*Group ID* : _"..msg.to.id.."_\n*Your Msg* : _"..msg.text.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
return {
description = "show your id",
usage = {
moderator = {
"!id : show your userid and information" },
},
patterns = {
"^[!/#]([Ii][Dd])$",
"^[Ii][Dd]$",
},
run = run
}
end
