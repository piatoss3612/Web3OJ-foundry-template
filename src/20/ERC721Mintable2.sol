// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

interface IERC721Mintable2 {
    function mint(address to) external;
}

contract ERC721Mintable2 {
    IERC721Mintable2 public token;

    function setToken(address _token) public {
        token = IERC721Mintable2(_token);
    }
}

// 여기에 작성하시오.
contract MyERC721 {}
