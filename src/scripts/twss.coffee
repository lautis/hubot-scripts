# Hubot will respond to (in)appropriate lines with "That's what she said"
#
# hubot <*> - Hubot will respond "that's what she said" when appropriate

twss = require 'twss'

module.exports = (robot) ->
  robot.hear /.*/, (msg) ->
    if twss.is(msg.match[0])
      msg.send "THAT'S WHAT SHE SAID!"
