// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandleProblem2 {
    uint256 public errorCode;

    function throwError() public {
        // 여기에 에러를 내는 함수가 작성되어 있습니다.
    }

    function setErrorCode(uint256 _errorCode) public {
        errorCode = _errorCode;
    }
}

// 이곳에 작성하시오
contract MyErrorHandle2 {
    function handleError(ErrorHandleProblem2 _problem) public {
        uint256 code;

        try _problem.throwError() {}
        catch Panic(uint256 errorCode) {
            code = errorCode;
        }

        _problem.setErrorCode(code);
    }
}
