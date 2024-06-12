// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20TransferFrom} from "src/08/ERC20TransferFrom.sol";

contract ERC20ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address tokenOwner) public {
        vm.startBroadcast();

        address sender = msg.sender;

        ERC20TransferFrom instance = ERC20TransferFrom(instanceAddress);

        /* 
            1. https://sepolia.etherscan.io - 블록 탐색기에서 tokenOwner 주소를 확인합니다.
            2. 문제 인스턴스 컨트랙트의 tokenOwner 주소로부터 20 WEB3OJT를 인출합니다.
        */

        vm.stopBroadcast();
    }
}
