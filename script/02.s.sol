// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {MinusCalculatorProblem, MyMinusCalculator} from "src/02/MinusCalculator.sol";

contract MinusCalculatorScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        MinusCalculatorProblem problem = MinusCalculatorProblem(instanceAddress);

        MyMinusCalculator calculator = new MyMinusCalculator();

        problem.setMinusCalculator(address(calculator));

        vm.stopBroadcast();
    }
}
