// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Mintable, MyERC20} from "src/09/ERC20Mintable.sol";
import {ERC721Mintable, MyERC721} from "src/19/ERC721Mintable.sol";

contract ERC721MintableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC721Mintable instance = ERC721Mintable(instanceAddress);

        /* 
            1. https://sepolia.etherscan.io - 블록 탐색기에서 instanceOwner 주소를 확인합니다.
            2. instanceOwner에게 MyERC721 토큰의 mint 권한을 부여합니다.
        */
        MyERC721 myERC721 = new MyERC721();
        instance.setToken(address(myERC721));

        vm.stopBroadcast();
    }
}
