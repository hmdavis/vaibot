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

DISS = /(hubes (insult)|(kill) vaibot)/i
KILL = /vaibot die/i
SHEENA = /sheena|sheena1|merf|murf/i
TARIK = /tarik me (.*)/i
VB = /vaibhav me (.*)/i
PONG = /vaibot pong/i

merf = 0 

module.exports = (robot) ->
	
	robot.hear DISS, (msg) ->
		user = msg.message.user.name
		msg.send("Seriously " + user + "? You leave me no choice.")
		msg.send("It hurts me to do this...")
		msg.send("hubes die")

	robot.hear SHEENA, (msg) -> 
		merf = (merf + 1) 
		if (merf%2 == 0)
			msg.send("MERF!")
		else 
			msg.send("sheena the masheena!")

	robot.hear TARIK, (msg) ->
		phrase = msg.match[1].replace /([^a-zA-Z1-9]+$)/, ""
		tolike = () -> if Math.random() < .25 then " like, " else " "
		phrase = phrase.replace /[\s]/g, tolike
		phrase = phrase.replace /([^a-zA-Z1-9]$)+/, " man!"
		msg.send("Sir, " + phrase + ", man!")  

	robot.hear VB, (msg) -> 
		msg.send("I'm Vaibhav and I suck at everything!")

	robot.hear PONG, (msg) -> 
		msg.send("PING")
