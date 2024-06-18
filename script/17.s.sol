// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OnlineJudgeNFTPausable} from "src/17/Web3OnlineJudgeNFTPausable.sol";

contract ERC721PausableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTPausable instance = Web3OnlineJudgeNFTPausable(instanceAddress);

        instance.pause();

        vm.stopBroadcast();
    }
}
