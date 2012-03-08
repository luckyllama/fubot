# Allows Hubot to do mathematics.
#
# math me <expression> - Calculate the given expression.
# convert me <expression> to <units> - Convert expression to given units.
module.exports = (robot) ->
	robot.prototype.receive (message) -> 
	  	users = @.usersForFuzzyName(message.user)
	  	if users.length is 1
	        user = users[0]
	        unless user.ignore
	        	super message

	robot.respond /ignore ([\w .-_]+)/i, (msg) ->
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