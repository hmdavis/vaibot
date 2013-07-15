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
QUIET = /.*/

quiet_count = 0 

module.exports = (robot) ->
	
	robot.hear DISS, (msg) ->
		user = msg.message.user.name
		msg.send("Seriously " + user + "? You leave me no choice.")
		msg.send("It hurts me to do this...")
		msg.send("hubes die")

	robot.hear QUIET, (msg) -> 
		user = msg.message.user.name
		quiet_count = (quiet_count + 1)
		if (quiet_count%30 == 0) 
			msg.send("Can we keep it down please?")
		else if (quiet_count%54 == 0) 
			msg.send("Please quiet " + user + ", I'm trying to concentrate.")
		else if (quiet_count%61 == 0) 
			msg.send(user + " please shut up I've asked nicely.")
