// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMultiplicationCalculator {
    function multiply(uint256, uint256) external pure returns (uint256);
}

contract MultiplicationCalculatorProblem {
    IMultiplicationCalculator public multiplicationCalculator;

    function setMultiplicationCalculator(address _multiplicationCalculator) public {
        multiplicationCalculator = IMultiplicationCalculator(_multiplicationCalculator);
    }
}

contract MyMultiplicationCalculator is IMultiplicationCalculator {
    function multiply(uint256 input1, uint256 input2) public pure override returns (uint256) {
        // 이곳에 작성하시오
    }
}
