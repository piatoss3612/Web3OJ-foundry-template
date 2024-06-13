// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Web3OnlineJudgeNFTFind} from "src/18/Web3OnlineJudgeNFTFind.sol";

contract ERC721PausableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OnlineJudgeNFTFind instance = Web3OnlineJudgeNFTFind(instanceAddress);

        // 당신은 랜덤한 값의 tokenId의 WEB3OJT 토큰 소유하고 있습니다.
        // 어떤 tokenId를 소유하고 있는지 Blockchain Explorer를 이용하여 찾은 후, 문제 인스턴스 컨트랙트에게 송금하시오.

        address sender = msg.sender;
        uint256 tokenId;

        vm.stopBroadcast();
    }
}
