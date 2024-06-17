// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20TransferFrom} from "src/08/ERC20TransferFrom.sol";

contract ERC20ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address tokenOwner) public {
        vm.startBroadcast();

        address sender = msg.sender;

        ERC20TransferFrom instance = ERC20TransferFrom(instanceAddress);

        instance.transferFrom(tokenOwner, sender, 20 * 10 ** instance.decimals());

        vm.stopBroadcast();
    }
}
