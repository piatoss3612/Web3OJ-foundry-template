// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ErrorHandleProblem, MyErrorHandle} from "src/27/ErrorHandle.sol";

contract ErrorHandleScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ErrorHandleProblem problem = ErrorHandleProblem(instanceAddress);

        MyErrorHandle myInstance = new MyErrorHandle();

        myInstance.handleError(problem);

        vm.stopBroadcast();
    }
}
