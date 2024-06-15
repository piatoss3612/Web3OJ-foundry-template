// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ReceiveEtherFunctionProblem, MyReceiveEther} from "src/24/ReceiveEtherFunction.sol";

contract ReceiveEtherFunctionScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ReceiveEtherFunctionProblem problem = ReceiveEtherFunctionProblem(instanceAddress);

        // 먼저 일반지갑으로 문제 컨트랙트에게 이더를 송금하고,

        // 송금한 이더를 다시 돌려받을 컨트랙트를 작성하고
        MyReceiveEther myInstance = new MyReceiveEther();

        // setReceiveEtherAddress함수를 이용하여 문제 컨트랙트에 설정한뒤 제출하시오.
        problem.setReceiveEtherAddress(payable(address(myInstance)));

        vm.stopBroadcast();
    }
}
