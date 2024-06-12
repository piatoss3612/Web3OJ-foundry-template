// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IERC20Mintable {
    function mint(address to, uint256 amount) external;
}

contract ERC20Mintable {
    IERC20Mintable public token;

    function setToken(address _token) public {
        token = IERC20Mintable(_token);
    }
}

// 이곳에 작성하시오
contract MyERC20 {}
