// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {LockProblem, Unlock} from "src/25/Lock.sol";

contract LockScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        LockProblem problem = LockProblem(instanceAddress);

        Unlock myInstance = new Unlock();

        myInstance.unlock(address(problem));

        bool lock = problem.lock();
        require(lock == false, "Unlock failed");

        vm.stopBroadcast();
    }
}
