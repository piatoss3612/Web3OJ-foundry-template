// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Web3OJTPermitable} from "src/12/Web3OJTPermitable.sol";

contract Web3OJTPermitableScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        Web3OJTPermitable instance = Web3OJTPermitable(instanceAddress);

        address owner = msg.sender;

        bytes32 permitTypeHash =
            keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
        address spender = instanceAddress;
        uint256 value = 20 * 10 ** instance.decimals();
        uint256 nonce = instance.nonces(owner);
        uint256 deadline = block.timestamp + 1 days;

        // digest를 구하는 코드를 작성해보세요.
        bytes32 digest = keccak256(
            abi.encodePacked(
                "\x19\x01",
                instance.DOMAIN_SEPARATOR(),
                keccak256(abi.encode(permitTypeHash, owner, spender, value, nonce, deadline))
            )
        );

        (uint8 v, bytes32 r, bytes32 s) = vm.sign(digest);

        instance.permit(owner, spender, value, deadline, v, r, s);

        vm.stopBroadcast();
    }
}
