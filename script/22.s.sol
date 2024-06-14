// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {FindPrivateValue} from "src/22/FindPrivateValue.sol";

contract FindPrivateValueScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, uint256 value) public {
        vm.startBroadcast();

        FindPrivateValue instance = FindPrivateValue(instanceAddress);

        instance.setValue(value);

        if (!instance.isSame()) {
            revert("FindPrivateValueScript: not same");
        }

        vm.stopBroadcast();
    }
}
