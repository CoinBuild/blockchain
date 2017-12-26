pragma solidity ^0.4.16;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Game.sol";
import '../contracts/MyDFSToken.sol';
import '../contracts/BrokerManager.sol';
import '../contracts/UserStats.sol';

contract TestGame{

	address service;
	MyDFSToken gameToken;
	UserStats stats;
	BrokerManager broker;

	Game game;

	// function beforeAll(){
	// 	service = address(this);
	// 	gameToken = new MyDFSToken();
	// 	stats = new UserStats();
	// 	broker = new BrokerManager(address(gameToken), address(stats));
	// }

	// function testCreateGame(){
	// 	uint8[] memory smallWinnerRules = new uint8[](3);
	// 	smallWinnerRules[0] = 50;
	// 	smallWinnerRules[1] = 30;
	// 	smallWinnerRules[2] = 20;

	// 	uint8[] memory largeWinnerRules = new uint8[](4);
	// 	largeWinnerRules[0] = 40;
	// 	largeWinnerRules[1] = 30;
	// 	largeWinnerRules[2] = 20;
	// 	largeWinnerRules[3] = 10;


	// 	game = new Game(
	// 		address(gameToken),
	// 		address(stats),
	// 		address(broker),
	// 		service,
	// 		5,
	// 		20,
	// 		smallWinnerRules,
	// 		largeWinnerRules);
	// 	stats.approve(address(game));
		
	// 	Assert.notEqual(game, 0, "Game created");
	// 	Assert.equal(stats.allowance(address(game)), true, "Game added to stats contract");
	// }

	// function testGameStatus() external {
	// 	uint state = uint(game.gameState());
	// 	uint expected = 0;
	// 	Assert.equal(state, expected, "Game state is TeamCreation");
	// }

	// function testParticipate() external {
	// 	int32[] memory team = new int32[](3);
	// 	team[0] = 1;
	// 	team[1] = 2;
	// 	team[2] = 3;
	// 	game.addParticipant(address(this), team);

	// 	team[0] = 3;
	// 	team[1] = 4;
	// 	team[2] = 5;
	// 	game.addParticipant(address(this), team);
	// }

	// function testStartGame() external {
	// 	game.startGame();
	// 	uint state = uint(game.gameState());
	// 	uint expected = 1;

	// 	Assert.equal(state, expected, "Game state is InProgress");
	// }

	// function testFinishGame(){
	// 	int32[] memory sportsmanFlatData = new int32[](35);

 //        sportsmanFlatData[0] = 1;
 //        sportsmanFlatData[1] = 2;
 //        sportsmanFlatData[2] = 2;
 //        sportsmanFlatData[3] = 1;
 //        sportsmanFlatData[4] = 2;
 //        sportsmanFlatData[5] = 2;
 //        sportsmanFlatData[6] = 2;
 //        sportsmanFlatData[7] = 6;
 //        sportsmanFlatData[8] = 1;
 //        sportsmanFlatData[9] = 3;
 //        sportsmanFlatData[10] = 2;
 //        sportsmanFlatData[11] = 2;
 //        sportsmanFlatData[12] = 3;
 //        sportsmanFlatData[13] = 1;
 //        sportsmanFlatData[14] = 3;
 //        sportsmanFlatData[15] = 2;
 //        sportsmanFlatData[16] = 4;
 //        sportsmanFlatData[17] = 1;
 //        sportsmanFlatData[18] = 1;
 //        sportsmanFlatData[19] = 2;
 //        sportsmanFlatData[20] = 3;
 //        sportsmanFlatData[21] = 4;
 //        sportsmanFlatData[22] = 1;
 //        sportsmanFlatData[23] = 4;
 //        sportsmanFlatData[24] = 1;
 //        sportsmanFlatData[25] = 1;
 //        sportsmanFlatData[26] = 2;
 //        sportsmanFlatData[27] = 2;
 //        sportsmanFlatData[28] = 5;
 //        sportsmanFlatData[29] = 1;
 //        sportsmanFlatData[30] = 4;
 //        sportsmanFlatData[31] = 1;
 //        sportsmanFlatData[32] = 1;
 //        sportsmanFlatData[33] = 2;
 //        sportsmanFlatData[34] = 3;

 //        int32[] memory rulesFlat = new int32[](24);

 //        rulesFlat[0] = 1;
 //        rulesFlat[1] = 1;
 //        rulesFlat[2] = 40;
 //        rulesFlat[3] = 1;
 //        rulesFlat[4] = 2;
 //        rulesFlat[5] = 40;
 //        rulesFlat[6] = 2;
 //        rulesFlat[7] = 1;
 //        rulesFlat[8] = 10;
 //        rulesFlat[9] = 2;
 //        rulesFlat[10] = 2;
 //        rulesFlat[11] = 80;
 //        rulesFlat[12] = 3;
 //        rulesFlat[13] = 1;
 //        rulesFlat[14] = 100;
 //        rulesFlat[15] = 3;
 //        rulesFlat[16] = 2;
 //        rulesFlat[17] = 10;
 //        rulesFlat[18] = 4;
 //        rulesFlat[19] = 1;
 //        rulesFlat[20] = 20;
 //        rulesFlat[21] = 4;
 //        rulesFlat[22] = 2;
 //        rulesFlat[23] = 80;

	// 	game.finishGame(sportsmanFlatData, rulesFlat);

	// 	uint state = uint(game.gameState());
	// 	uint expected = 3;

	// 	Assert.equal(state, expected, "Game state is Finished");
	// }
}