Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/uno.coffee')

describe 'uno', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'responds to hello', ->
    @room.user.say('alice', '@hubot hello').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot hello']
        ['hubot', '@alice hello!']
      ]

  it 'starts a new game with !uno', ->
    @room.user.say('player1', '!uno').then =>
      expect(@room.messages).to.eql [
        ['player1', '!uno']
        ['hubot', 'player1 has started UNO. Type !join to join the game.']
      ]
