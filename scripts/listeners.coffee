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
INTERNS = /(interns.*)/i

module.exports = (robot) ->
	
	robot.hear INTERNS, (msg) ->
		#user = msg.message.user.name
        msg.send("i dont know something adorable")
		#if (user is "tchen_") 
			#msg.send("SHUT UP TOMMY") 
		#else
			#msg.send("I like " + user + " more than Tommy") 
  
