// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721Init {
    ERC721 public web3ojNFT;

    function setWeb3ojNFT(address _web3ojNFT) public {
        web3ojNFT = ERC721(_web3ojNFT);
    }
}

// 이곳에 작성하시오
contract MyERC721 {}
