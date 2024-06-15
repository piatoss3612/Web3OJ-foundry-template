// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {DormantAccount, MyAccount} from "src/31/DormantAccount.sol";

contract DormantAccountScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        DormantAccount problem = DormantAccount(instanceAddress);

        MyAccount myInstance = new MyAccount();

        // 휴면 계정에 이더를 주입합니다.

        uint256 balance = address(problem).balance;
        if (balance == 0) {
            revert("Failed to inject ether");
        }

        vm.stopBroadcast();
    }
}
