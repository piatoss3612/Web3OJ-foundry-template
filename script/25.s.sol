// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {LockProblem} from "src/25/Lock.sol";

contract LockScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        LockProblem problem = LockProblem(instanceAddress);

        // 잠겨 있는 좌물쇠를 풀고 제출하시오.

        bool lock = problem.lock();
        require(lock == false, "Unlock failed");

        vm.stopBroadcast();
    }
}
