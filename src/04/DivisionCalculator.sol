// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDivisionCalculator {
    function divide(uint256, uint256) external pure returns (uint256);
}

contract DivisionCalculatorProblem {
    IDivisionCalculator public divisionCalculator;

    function setDivisionCalculator(address _divisionCalculator) public {
        divisionCalculator = IDivisionCalculator(_divisionCalculator);
    }
}

contract MyDivisionCalculator is IDivisionCalculator {
    function divide(uint256 input1, uint256 input2) public pure override returns (uint256) {
        // 이곳에 작성하시오
    }
}
