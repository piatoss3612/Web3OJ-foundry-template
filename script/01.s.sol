// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {PlusCalculatorProblem, MyPlusCalculator} from "src/01/PlusCalculator.sol";

contract PlusCalculatorScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        PlusCalculatorProblem problem = PlusCalculatorProblem(instanceAddress);

        MyPlusCalculator calculator = new MyPlusCalculator();

        problem.setPlusCalculator(address(calculator));

        vm.stopBroadcast();
    }
}
