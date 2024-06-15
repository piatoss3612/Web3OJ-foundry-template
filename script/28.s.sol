// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ErrorHandleProblem2, MyErrorHandle2} from "src/28/ErrorHandle2.sol";

contract ErrorHandle2Script is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ErrorHandleProblem2 problem = ErrorHandleProblem2(instanceAddress);

        MyErrorHandle2 myInstance = new MyErrorHandle2();

        myInstance.handleError(problem);

        vm.stopBroadcast();
    }
}
