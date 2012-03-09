# Does not process commands from ignored users. 
#
# hubot ignore <user> - ignore the given user.
# hubot who's ignored? - shows all ignored users. 
module.exports = (robot) ->

    normalReceive = robot.receive
    robot.receive = (message) -> 
        done = false

        users = (robot.usersForFuzzyName(message.user.name) if message and message.user) or []
        if users.length is 1
            user = users[0]
            done = true if user.ignore

        message.done = done
        normalReceive.call this, message

    robot.respond /ignore @?([\w .-_]+)/i, (msg) ->
        name = msg.match[1]

        users = robot.usersForFuzzyName(name)
        if users.length is 1
            user = users[0]
            user.ignore = not user.ignore
            if user.ignore 
                msg.send "Ok, #{name} is now being ignored." 
            else 
                msg.send "Ok, #{name} is no longer being ignored."
        else if users.length > 1
            msg.send "I know several people with that name. Be more specific."
        else
            msg.send "I don't know anything about #{name}."

    robot.respond /who('s| is) ignored(\?)?/i, (msg) ->
        ignoredNames = []
        ignoredNames.push(user.name) for key, user of (robot.users() or {}) when user.ignore
        
        msg.send "I'm ignoring #{ignoredNames.length} people: #{(name for name in ignoredNames).join(", ")}"