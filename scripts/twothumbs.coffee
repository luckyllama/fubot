# detect tweet URL and send tweet content

module.exports = (robot) ->
    robot.hear /who('s|\shas)(\sgot)? two thumbs.*/i, (msg) ->    
        msg.send "#{msg.message.user.name} does."