// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721Mintable2, MyERC721} from "src/20/ERC721Mintable2.sol";

contract ERC721Mintable2Script is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC721Mintable2 instance = ERC721Mintable2(instanceAddress);

        MyERC721 myERC721 = new MyERC721(instanceOwner);

        instance.setToken(address(myERC721));

        vm.stopBroadcast();
    }
}
