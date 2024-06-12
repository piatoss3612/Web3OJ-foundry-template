// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Approve, MyERC20} from "src/07/ERC20Approve.sol";

contract ERC20ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Approve instance = ERC20Approve(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        // 문제 인스턴스 컨트랙트에게 20 WEB3OJT 인출을 허용합니다.

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
