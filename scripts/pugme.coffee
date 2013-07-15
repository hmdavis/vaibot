# Description:
#   Pugme is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot pug me - Receive a pug
#   hubot pug bomb N - get N pugs

module.exports = (robot) ->

  counter = 0

  robot.respond /pug me/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).pug

  robot.respond /pug bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    if count > 10
        if counter == 0
            msg.send("sorry, I can't handle that much cuteness")
            counter++ 
        else if counter == 1
            msg.send("PLEASE stop it's too cute")
            counter++ 
        else if counter == 2
            msg.send("omgod i can't even bear how adorable i can't guys")
            counter++ 
        else if counter == 3
            msg.send("seriously i told you i'm not doing it shut the fuck up")
            counter = 0
    else
        msg.http("http://pugme.herokuapp.com/bomb?count=" + count)
          .get() (err, res, body) ->
            msg.send pug for pug in JSON.parse(body).pugs

  robot.respond /how many pugs are there/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).pug_count} pugs."

