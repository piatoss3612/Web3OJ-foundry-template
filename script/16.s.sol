// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OnlineJudgeNFTBurnable} from "src/16/Web3OnlineJudgeNFTBurnable.sol";

contract ERC721BurnableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTBurnable instance = Web3OnlineJudgeNFTBurnable(instanceAddress);

        // 당신은 TokenId 0인 WEB3OJNFT를 소유하고 있는데, 이를 소각해보시오.

        vm.stopBroadcast();
    }
}
