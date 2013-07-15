module.exports = (robot) ->

    options = ["Gogo thai", "Grimaldi's", "Telegraphe", "Spoon", "Shake Shack", "Tres Carnes", "Hummus and Pita Co"]
    
    robot.respond /lunch me/i, (msg) ->
        num = Math.floor(Math.random() * 7)
        msg.send(options[num])
        

    robot.respond /lunch options/i, (msg) ->
        for place in options
            msg.send(place)
