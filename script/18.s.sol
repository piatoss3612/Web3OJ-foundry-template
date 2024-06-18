// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OnlineJudgeNFTFind} from "src/18/Web3OnlineJudgeNFTFind.sol";

contract ERC721PausableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTFind instance = Web3OnlineJudgeNFTFind(instanceAddress);

        address sender = msg.sender;
        uint256 tokenId;

        // tokenId를 찾아서 tokenId 변수에 할당하시오.

        instance.transferFrom(sender, instanceAddress, tokenId);

        vm.stopBroadcast();
    }
}
