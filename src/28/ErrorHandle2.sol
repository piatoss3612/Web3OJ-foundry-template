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
        // 문제 컨트랙트에서 throwError()를 호출하여 코드를 받아온뒤

        // setErrorCode()에 받은 코드를 등록하고 제출하시오.
        _problem.setErrorCode(code);
    }
}
