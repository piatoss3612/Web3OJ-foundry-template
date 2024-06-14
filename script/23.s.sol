// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {RunWithABI2Problem, MyRunWithABI2} from "src/23/RunWithABI2.sol";

contract RunWithABI2Script is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        RunWithABI2Problem problem = RunWithABI2Problem(instanceAddress);

        MyRunWithABI2 myInstance = new MyRunWithABI2();

        // 1. 문제 Contract에 privateKey 생성

        // 2. 정답 Contract의 privateKey 변수에 문제 Contract의 privateKey 탈취하여 설정
        myInstance.setPrivateKey(address(problem));

        // 3. 정답 Contract를 문제 Contract의 setRunWithABI2함수를 이용하여 등록한뒤 제출
        problem.setRunWithABI2(address(myInstance));

        vm.stopBroadcast();
    }
}
