# Description
#   A hubot script to play Uno, similar to IRC days gone by
#
# Configuration:
#   
#
# Commands:
#   !uno - Start an uno game. The player that types this becomes player 1.
#   !join - Join the game (at any time).
#   !deal - Start the game (as long as you have 2+ players). Can only be used by player 1.
#   !unostop - Ends the current uno game. Can only be used by player 1.
#   !quit - Removes you from the current game. If used by player 1, player 2 becomes player 1.
#   !kickplayer - Kicks a user from the current game. Can only be used by player 1.
#   !cards - Shows you your cards.
#   !count - Shows all the players, the number of cards they have left and whose turn it is.
#   !topcard - Shows the top card.
#   !draw - Gives you a card from the deck.
#   !pass - Passes the turn to the next person (you must draw once to use this).
#   !play - Play a given card.
#   !score - Shows how many wins the given user has.
#   !top10 - Shows the top 10 uno players and their wins.
#
# Notes:
#   
#
# Author:
#   James McCollum <jmccollum@signet-studios.com>

module.exports = (robot) ->
  robot.respond /hello/, (res) ->
    res.reply "hello!"

  robot.hear /!uno/, (msg) ->
    from = msg.message.user.name.toLowerCase()
    room = msg.message.room
    msg.send "#{from} has started UNO. Type !join to join the game."