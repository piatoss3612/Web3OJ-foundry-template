// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OJTPausable} from "src/11/Web3OJTPausable.sol";

contract Web3OJTPausableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OJTPausable instance = Web3OJTPausable(instanceAddress);

        instance.pause();

        vm.stopBroadcast();
    }
}
