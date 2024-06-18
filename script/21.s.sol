// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";

contract RunWithABIScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        address sender = msg.sender;

        bytes4 selector = 0xda17c605;
        bytes memory data = abi.encodeWithSelector(selector, sender);

        (bool success,) = instanceAddress.call(data);
        if (!success) {
            revert("RunWithABIScript: failed to call");
        }

        vm.stopBroadcast();
    }
}
