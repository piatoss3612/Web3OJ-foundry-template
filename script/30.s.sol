// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {SumOfArrayProblem, MySumOfArray} from "src/30/SumOfArray.sol";

contract SumOfArrayScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        SumOfArrayProblem problem = SumOfArrayProblem(instanceAddress);

        MySumOfArray myInstance = new MySumOfArray();

        problem.setSumOfArrayContract(address(myInstance));

        vm.stopBroadcast();
    }
}
