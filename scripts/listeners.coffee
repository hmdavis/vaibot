# Description:
#   Custom listeners for our dearest
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Configurable 
#
# Author:
#   Harry

URL = "#{process.env.HUBOT_SPOT_URL}"
DISS = /(hubes (insult)|(kill) vaibot)/i
KILL = /vaibot die/i
SHEENA = /sheena|sheena1|merf|murf/i

merf =0 

module.exports = (robot) ->
	
	robot.hear DISS, (msg) ->
		user = msg.message.user.name
		msg.send("Seriously " + user + "? You leave me no choice.")
		msg.send("It hurts me to do this...")
		msg.send("hubes die")

	robot.hear SHEENA, (msg) -> 
		merf = (merf + 1) 
		if (quiet_count%2 == 0)
			msg.send("MERF!")
		else 
			msg.send("sheena the masheena!")