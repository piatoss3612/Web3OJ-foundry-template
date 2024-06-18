// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC721Mintable, MyERC721} from "src/19/ERC721Mintable.sol";

contract ERC721MintableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC721Mintable instance = ERC721Mintable(instanceAddress);

        MyERC721 myERC721 = new MyERC721(instanceOwner);

        instance.setToken(address(myERC721));

        vm.stopBroadcast();
    }
}
