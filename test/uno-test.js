var Helper = require('hubot-test-helper'),
	chai = require('chai'),
	expect = chai.expect,
	helper = new Helper('../src/uno.js');
	
describe('uno', function(){
	var room;

	beforeEach(function(){
		room = helper.createRoom();
	});
	
	afterEach(function(){
		room.destroy();
	});

	it('starts a new game with !uno', function(){
		room.user.say('player1', '!uno').then(function(){
			expect(room.messages).to.eql([
				['player1', '!uno']
				['hubot', 'player1 has started UNO. Type !join to join the game.']
			])
		});
	});
});
