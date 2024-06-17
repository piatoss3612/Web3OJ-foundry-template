// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Mintable, MyERC20} from "src/09/ERC20Mintable.sol";

contract ERC20MintableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC20Mintable instance = ERC20Mintable(instanceAddress);

        MyERC20 web3ojt = new MyERC20(instanceOwner);

        instance.setToken(address(web3ojt));

        vm.stopBroadcast();
    }
}
