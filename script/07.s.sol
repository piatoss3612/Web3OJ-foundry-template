// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Approve, MyERC20} from "src/07/ERC20Approve.sol";

contract ERC20ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Approve instance = ERC20Approve(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        web3ojt.approve(instanceAddress, 20 * 10 ** web3ojt.decimals());

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
