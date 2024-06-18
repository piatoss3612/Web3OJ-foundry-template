// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISumOfArray {
    function sum(uint256[] memory _a) external pure returns (uint256);
}

contract SumOfArrayProblem {
    ISumOfArray public sumOfArrayContract;

    function setSumOfArrayContract(address _sumOfArrayContract) public {
        sumOfArrayContract = ISumOfArray(_sumOfArrayContract);
    }
}

contract MySumOfArray is ISumOfArray {
    function sum(uint256[] memory _a) public pure override returns (uint256 total) {
        for (uint256 i = 0; i < _a.length;) {
            unchecked {
                total += _a[i++];
            }
        }
    }
}
