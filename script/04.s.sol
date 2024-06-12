// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {DivisionCalculatorProblem, MyDivisionCalculator} from "src/04/DivisionCalculator.sol";

contract MultiplicationCalculatorScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        DivisionCalculatorProblem problem = DivisionCalculatorProblem(instanceAddress);

        MyDivisionCalculator calculator = new MyDivisionCalculator();

        problem.setDivisionCalculator(address(calculator));

        vm.stopBroadcast();
    }
}
