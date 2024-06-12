// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Mintable, MyERC20} from "src/09/ERC20Mintable.sol";

contract ERC20MintableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress, address instanceOwner) public {
        vm.startBroadcast();

        ERC20Mintable instance = ERC20Mintable(instanceAddress);

        /* 
            1. https://sepolia.etherscan.io - 블록 탐색기에서 instanceOwner 주소를 확인합니다.
            2. instanceOwner에게 MyERC20 토큰의 mint 권한을 부여합니다.
        */
        MyERC20 web3ojt = new MyERC20();
        instance.setToken(address(web3ojt));

        vm.stopBroadcast();
    }
}
