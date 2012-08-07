# Description:
#   Culture!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   culture - mention on of ix2's 2012 culture slogans
#
# Author:
#   frankh

culture = [
  "1. Bring it everyday (lunch?)",
  "2. Color outside the lines (then why even have the lines?)",
  "3. Ideas rule (and girls drool)",
  "4. Work It, Girl! (As well as IT does)"
  "5. Socialism (We is greater than me)"
]

module.exports = (robot) ->
  robot.hear /.*(\s|^)(culture|inspire me)(\s|$).*/i, (msg) ->
    msg.send msg.random culture