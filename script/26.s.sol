// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {StringCompareProblem, MyStringCompare} from "src/26/StringCompare.sol";

contract StringCompareScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        StringCompareProblem problem = StringCompareProblem(instanceAddress);

        MyStringCompare myInstance = new MyStringCompare();

        problem.setStringCompareContract(address(myInstance));

        vm.stopBroadcast();
    }
}
