// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721ApproveScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC721 instance = ERC721(instanceAddress);

        instance.approve(instanceAddress, 0);

        vm.stopBroadcast();
    }
}
