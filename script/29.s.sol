// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ErrorHandleProblem3, MyErrorHandle3} from "src/29/ErrorHandle3.sol";

contract ErrorHandle3Script is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ErrorHandleProblem3 problem = ErrorHandleProblem3(instanceAddress);

        MyErrorHandle3 myInstance = new MyErrorHandle3();

        myInstance.handleError(problem);

        bool valid = problem.valid();
        if (!valid) {
            revert("ErrorHandle3Script: invalid");
        }

        vm.stopBroadcast();
    }
}
