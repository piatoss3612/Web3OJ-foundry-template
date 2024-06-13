// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC721 instance = ERC721(instanceAddress);

        // 당신에게는 token ID가 0인 WEB3OJNFT이 있는데,
        // 이 토큰을 문제 인스턴스 컨트랙트가 가져갈수 있도록 허용해보시오

        vm.stopBroadcast();
    }
}
