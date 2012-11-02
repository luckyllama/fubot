# Description:
#   Detect tweet URL and send tweet content
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   Vrtak-CZ

module.exports = (robot) ->
	robot.hear /https?:\/\/(mobile\.)?twitter\.com\/.*?\/status(es)?\/([0-9]+)/i, (msg) ->
		msg.http("https://api.twitter.com/1/statuses/show/#{msg.match[3]}.json?include_entities=true").get() (err, res, body) ->
			return if err or (res.statusCode != 200)

			response = JSON.parse(body)

			if response
			  result = response.text
			  if response.entities.urls
			    for url in response.entities.urls
			      result = result.substr(0, url.indices[0]) + url.expanded_url + result.substr(url.indices[1])
			  if response.entities.media
			    for media in response.entities.media
			      result = result.substr(0, media.indices[0]) + media.expanded_url + result.substr(media.indices[1])

			  msg.send "@#{response.user.screen_name}: #{result}"
			else 
			  msg.send "Twitter returned nothing!"
