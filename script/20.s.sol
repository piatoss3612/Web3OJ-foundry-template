// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Mintable, MyERC20} from "src/09/ERC20Mintable.sol";
import {ERC721Mintable2, MyERC721} from "src/20/ERC721Mintable2.sol";

contract ERC721Mintable2Script is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC721Mintable2 instance = ERC721Mintable2(instanceAddress);

        /* 
            1. https://sepolia.etherscan.io - 블록 탐색기에서 instanceOwner 주소를 확인합니다.
            2. instanceOwner에게 MyERC721 토큰의 mint 권한을 부여합니다.
        */
        MyERC721 myERC721 = new MyERC721();
        instance.setToken(address(myERC721));

        vm.stopBroadcast();
    }
}
