# Description:
#   "Simple path to have Hubot echo out anything in the message querystring for a given room."
#
# Dependencies:
#   "querystring": "0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   None
#
# URLs:
#   GET /hubot/say?message=<message>[&room=<room>&type=<type]
#
# Authors:
#   ajacksified

querystring = require('querystring')

module.exports = (robot) ->
  robot.router.get "/hubot/say", (req, res) ->
    query = querystring.parse(req._parsedUrl.query)

    user = {}
    user.room = query.room if query.room
    user.type = query.type if query.type

    if query.message.length > 0
    	robot.send(user, query.message)
    	res.end "Said #{query.message} to #{query.room} #{query.type}"
    else 
    	res.end "e.g. /say?message=test [&room=%23roomname] or [&room=user]"
