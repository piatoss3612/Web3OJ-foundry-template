// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract DormantAccount {}

contract MyAccount {
    function injectEther(address payable _target) public payable {
        require(msg.value > 0);
        selfdestruct(_target);
    }
}
