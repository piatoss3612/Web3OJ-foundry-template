// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {RunWithABI2Problem, MyRunWithABI2} from "src/23/RunWithABI2.sol";

contract RunWithABI2Script is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        RunWithABI2Problem problem = RunWithABI2Problem(instanceAddress);

        MyRunWithABI2 myInstance = new MyRunWithABI2();

        (bool ok,) = instanceAddress.call(abi.encodePacked(bytes4(0xa6e5ca07)));
        require(ok, "call failed");

        myInstance.setPrivateKey(address(problem));

        problem.setRunWithABI2(address(myInstance));

        vm.stopBroadcast();
    }
}
