# Description:
#   Custom listeners
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

module.exports = (robot) ->
	
	robot.hear DISS, (msg) ->
		user = msg.message.user.name
		msg.send("Seriously " + user + "? You leave me no choice.")
		msg.send("It hurts me to do this...")
		msg.send("hubes die")