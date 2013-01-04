# Description:
#   Happy Dance! 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   dance - Display a dancing Carlton
#
# Author:
#   frankh

dances = [
  "http://media.tumblr.com/tumblr_lrzrlymUZA1qbliwr.gif",
  "http://3deadmonkeys.com/gallery3/var/albums/random_stuff/Carlton-Dance-GIF.gif",
  "http://gifsoup.com/webroot/animatedgifs/987761_o.gif",
  "http://gifsoup.com/view1/1307943/carlton-banks-dance-o.gif",
  "http://s2.favim.com/orig/28/carlton-banks-dance-Favim.com-239179.gif",
  "http://gifsoup.com/webroot/animatedgifs/131815_o.gif",
  "http://i1169.photobucket.com/albums/r512/shutterbird13/Dancing/23ma42wjpg.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/smith2.gif",
  "http://i1169.photobucket.com/albums/r512/shutterbird13/Dancing/hugh-grant-love-actually-dance_o_GIFSoupcom.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/280sw007883.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/300sw047yusw9.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/30075yu908.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/163563561.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_llatbbCeky1qbnthu.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/bale2.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/beyonce1.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/gary.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/sbtb4.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/smith1.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/smith4.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/sax.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/sunny2a.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/sunny3.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/sunny6.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_l9lkbpRkXT1qb9fdoo1_500.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_l51nsfJN331qzxf8vo1_400.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_lgslykEox31qdp3rbo1_500.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_lhpckhQ2mO1qamwa1o1_400.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_lhrzztdSKy1qb7hapo1_500.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_lildlrNEye1qgns73%202.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_ljhxqfJwB71qhisruo1_500.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_lk54oh7tTt1qeot64.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/tumblr_ll3jgmsPho1qzbiyjo1_500.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/152765_o.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/white%20people%20friday.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/human%20octopus.gif",
  "http://assets0.ordienetworks.com/images/GifGuide/dancing/bjorkandcatdancingp1.gif",
  "http://i.imgur.com/CCBeA.gif",
  "http://www.gif.tv/gifs/giftv-715-kramerobics.gif"
]

module.exports = (robot) ->
  robot.hear /.*(\s|^)(dance|happy)(\s|!|.|$).*/i, (msg) ->
    msg.send msg.random dances