// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMinusCalculator {
    function minus(uint256, uint256) external pure returns (uint256);
}

contract MinusCalculatorProblem {
    IMinusCalculator public minusCalculator;

    function setMinusCalculator(address _minusCalculator) public {
        minusCalculator = IMinusCalculator(_minusCalculator);
    }
}

contract MyMinusCalculator is IMinusCalculator {
    function minus(uint256 input1, uint256 input2) public pure override returns (uint256) {
        // 이곳에 작성하시오
    }
}
