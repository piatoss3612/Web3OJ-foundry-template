// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Transfer, MyERC20} from "src/06/ERC20Transfer.sol";

contract ERC20TransferScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Transfer instance = ERC20Transfer(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        // 문제 인스턴스 컨트랙트에게 20 WEB3OJT를 전송합니다.

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
