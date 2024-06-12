// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {MultiplicationCalculatorProblem, MyMultiplicationCalculator} from "src/03/MultiplicationCalculator.sol";

contract MultiplicationCalculatorScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        MultiplicationCalculatorProblem problem = MultiplicationCalculatorProblem(instanceAddress);

        MyMultiplicationCalculator calculator = new MyMultiplicationCalculator();

        problem.setMultiplicationCalculator(address(calculator));

        vm.stopBroadcast();
    }
}
