// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Init, MyERC20} from "src/05/ERC20Init.sol";

contract ERC20InitScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Init instance = ERC20Init(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
