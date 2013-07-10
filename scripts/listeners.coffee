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
TEST = /(tommy.*)/i

module.exports = (robot) ->
	
	robot.hear TEST, (msg) ->
		user = msg.message.user.name
		if (user is "tchen_") 
			msg.send("SHUT UP TOMMY") 
		else
			msg.send("I like " + user + " more than Tommy") 
  