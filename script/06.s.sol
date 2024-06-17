// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Transfer, MyERC20} from "src/06/ERC20Transfer.sol";

contract ERC20TransferScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Transfer instance = ERC20Transfer(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        web3ojt.transfer(address(instance), 20 * 10 ** web3ojt.decimals());

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
