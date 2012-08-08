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
  "1a. Bring it everyday: http://i2.kym-cdn.com/photos/images/original/000/110/517/tumblr_linaa6bCsl1qfrwtqo1_500.jpg",
  "1b. Bring it everyday: http://t.qkme.me/35og5h.jpg"
  "2a. Color outside the lines: http://1mut.com/wp-content/uploads/2011/07/60s-spiderman-meme-collection-1mut.com-8.png",
  "2b. Color outside the lines: https://encrypted-tbn0.google.com/images?q=tbn:ANd9GcRyga7rhlHduAKmIBRXTM0bjhbdnGMTNiO4URLD1YciYKnbtb0E"
  "3a. Ideas rule: http://cdn.memegenerator.net/instances/400x/22916029.jpg",
  "3b. Ideas rule: http://www.afro-squad.com/blog/wp-content/plugins/rss-poster/cache/6f796_a98010_60sspiderman.jpg"
  "3c. Ideas rule: http://images.sneakhype.com/wp-content/uploads/2011/04/this-is-how-I-fuck-the-sky-500x367.jpg"
  "4a. Work It, Girl!: http://narwhaler.com/img/zl/d/work-it-girl-work-it-spiderman-ZLDGfA.jpg"
  "4b. Work It, Girl!: https://encrypted-tbn1.google.com/images?q=tbn:ANd9GcR-4lmz4SmZzmSCucOuSpYkSeikU0mBp_qFt2oGyGVPquZ49oiZ"
  "5. We is greater than me: ?"
]

module.exports = (robot) ->
  robot.hear /.*(\s|^)(culture|inspire me)(\s|!|.|$).*/i, (msg) ->
    msg.send msg.random culture