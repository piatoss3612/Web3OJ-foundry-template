// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OnlineJudgeNFTBurnable} from "src/16/Web3OnlineJudgeNFTBurnable.sol";

contract ERC721BurnableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTBurnable instance = Web3OnlineJudgeNFTBurnable(instanceAddress);

        instance.burn(0);

        vm.stopBroadcast();
    }
}
