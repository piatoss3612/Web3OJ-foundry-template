// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721TransferFromScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC721 instance = ERC721(instanceAddress);

        address sender = msg.sender;

        // 당신은 token ID가 0인 WEB3OJNFT를 인출할 수 있습니다. 이 토큰을 인출해보시오
        address tokenOwner;

        vm.stopBroadcast();
    }
}
