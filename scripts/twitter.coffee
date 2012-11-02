#gets tweet from user
module.exports = (robot) ->
  robot.respond /(twitter|lasttweet) (.+)$/i, (msg) ->
   username = msg.match[2]
   msg.http("http://api.twitter.com/1/statuses/user_timeline/#{escape(username)}.json?count=1&include_rts=true&include_entities=true")
    .get() (err, res, body) ->
      response = JSON.parse body
      if response[0]
        result = response[0].text
        if response[0].entities.urls
          for url in response[0].entities.urls
            result = result.substr(0, url.indices[0]) + url.expanded_url + result.substr(url.indices[1])
        msg.send result
      else
       msg.send "Twitter replied with nothing."