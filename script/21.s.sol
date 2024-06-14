// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";

contract RunWithABIScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        address sender = msg.sender;

        // 문제 Contract에서 주소를 등록하는 Function의 ABI를 직접 찾아내어 실행하는 방법으로 당신의 주소를 등록해야 합니다.
        bytes4 selector = 0x0; // 선택자를 ABI로 찾아내어 입력해주세요.
        bytes memory data = abi.encodeWithSelector(selector, sender);

        (bool success,) = instanceAddress.call(data);
        if (!success) {
            revert("RunWithABIScript: failed to call");
        }

        vm.stopBroadcast();
    }
}
