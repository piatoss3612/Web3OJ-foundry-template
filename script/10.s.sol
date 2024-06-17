// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20BurnableToken} from "src/10/ERC20BurnableToken.sol";

contract ERC20BurnableTokenScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20BurnableToken instance = ERC20BurnableToken(instanceAddress);

        instance.burn(20 * 10 ** instance.decimals());

        vm.stopBroadcast();
    }
}
