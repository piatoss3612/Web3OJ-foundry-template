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

// 이곳에 작성하시오
contract MyErrorHandle {
    function handleError(ErrorHandleProblem _problem) public {
        string memory message;
        // 문제 컨트랙트에서 throwError()를 호출하여 메시지를 받아온뒤

        // setErrorMessage()에 받은 메시지를 등록하고 제출하시오.
        _problem.setErrorMessage(message);
    }
}
