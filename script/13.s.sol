// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721Init, MyERC721} from "src/13/ERC721Init.sol";

contract ERC721InitScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC721Init instance = ERC721Init(instanceAddress);

        MyERC721 myERC721 = new MyERC721();

        instance.setWeb3ojNFT(address(myERC721));

        vm.stopBroadcast();
    }
}
