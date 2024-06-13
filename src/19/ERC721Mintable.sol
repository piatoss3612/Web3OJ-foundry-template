// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

interface IERC721Mintable {
    function mint(address to, uint256 tokenId) external;
}

contract ERC721Mintable {
    IERC721Mintable public token;

    function setToken(address _token) public {
        token = IERC721Mintable(_token);
    }
}

// 여기에 작성하시오.
contract MyERC721 {}
