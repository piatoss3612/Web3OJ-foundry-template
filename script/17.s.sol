// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Web3OnlineJudgeNFTPausable} from "src/17/Web3OnlineJudgeNFTPausable.sol";

contract ERC721PausableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTPausable instance = Web3OnlineJudgeNFTPausable(instanceAddress);

        // 당신은 현재 WEB3OJT 토큰을 멈출수 있는 권한이 있습니다.
        // WEB3OJT 토큰에 문제가 발생한것을 알아차렸습니다. 급한대로 멈춰보세요.

        vm.stopBroadcast();
    }
}
