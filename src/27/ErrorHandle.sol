// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandleProblem {
    string public errorMessage;

    function throwError() public {
        // 여기에 에러를 내는 함수가 작성되어 있습니다.
    }

    function setErrorMessage(string memory _errorMessage) public {
        errorMessage = _errorMessage;
    }
}

contract MyErrorHandle {
    function handleError(ErrorHandleProblem _problem) public {
        string memory message;

        try _problem.throwError() {}
        catch Error(string memory reason) {
            message = reason;
        }

        _problem.setErrorMessage(message);
    }
}
