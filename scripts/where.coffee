# Description:
#   Let hubot tell you where things are.
#
# Commands:
#   hubot where is mercury - find a conference room by name

conferenceRooms = {
  mercury: "http://i.imgur.com/AZfkrM8.png",
  zinc: "http://i.imgur.com/z8JcXX5.png",
  silver: "http://i.imgur.com/sT3pAGO.png",
  titanium: "http://i.imgur.com/ZUqPTp7.png",
  oxygen: "http://i.imgur.com/5eHK2Hd.png",
  hydrogen: "http://i.imgur.com/48mayHi.png",
  silicon: "http://i.imgur.com/rvw1Y5P.png",
  carbon: "http://i.imgur.com/9CeF1oB.png",
  nitrogen: "http://i.imgur.com/MqF2DZz.png",
  promethium: "http://i.imgur.com/zxwVDru.png"
}

barks = [
  "I only know how to find conference rooms.",
  "I don't think {0} is a conference room.",
  "I dunno..."
]

module.exports = (robot) ->
  robot.respond /where is([- ](.+))?/i, (msg) ->
    term = msg.match[2]
    location = conferenceRooms[term]
    if location?
      msg.send location
    else
      msg.send (msg.random barks).replace("{0}", term)