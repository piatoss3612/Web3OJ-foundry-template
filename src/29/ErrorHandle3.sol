// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandleProblem3 {
    uint256 private originErrorCode;
    string private originErrorMessage;

    uint256 private errorCode;
    string private errorMessage;

    uint256 private throwErrorBlockNumber;
    uint256 private setErrorDataBlockNumber;

    TxLevel private txLevel = TxLevel.END;

    enum TxLevel {
        BEGIN,
        END
    }

    error ErrorData(uint256 errorCode, string errorMessage);

    modifier TxLevelGuard(TxLevel _txLevel) {
        require(_txLevel == txLevel, "Transaction level error");
        _;
    }

    function txBegin() public {
        throwErrorBlockNumber = block.number;
        originErrorCode = getErrorCode();
        originErrorMessage = getErrorMessage();
        txLevel = TxLevel.BEGIN;
    }

    function throwError() public TxLevelGuard(TxLevel.BEGIN) {
        revert ErrorData(originErrorCode, originErrorMessage);
    }

    function setErrorData(uint256 _errorCode, string memory _errorMessage) public TxLevelGuard(TxLevel.BEGIN) {
        errorCode = _errorCode;
        errorMessage = _errorMessage;
        setErrorDataBlockNumber = block.number;
        txLevel = TxLevel.END;
    }

    function getErrorCode() internal view returns (uint256) {
        uint256 randomHash = uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
        return randomHash % 1000;
    }

    function getErrorMessage() internal view returns (string memory) {
        string memory errorMessage = "abcdefghijklmnopqrstuvwxyz";

        // shuffle errorMessage
        for (uint256 i = 0; i < bytes(errorMessage).length; i++) {
            uint256 randomIndex =
                uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp))) % bytes(errorMessage).length;
            bytes1 temp = bytes(errorMessage)[i];
            bytes(errorMessage)[i] = bytes(errorMessage)[randomIndex];
            bytes(errorMessage)[randomIndex] = temp;
        }

        return errorMessage;
    }

    function valid() public view TxLevelGuard(TxLevel.END) returns (bool) {
        require(errorCode != 0, "Error code is zero");
        require(!strCompare(errorMessage, ""), "Error message is empty");

        bool result = errorCode == originErrorCode;
        result = result && strCompare(errorMessage, originErrorMessage);
        result = result && throwErrorBlockNumber == setErrorDataBlockNumber;
        return result;
    }

    function strCompare(string memory _a, string memory _b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((_a))) == keccak256(abi.encodePacked((_b))));
    }
}

// 이곳에 작성하시오
contract MyErrorHandle3 {
    function handleError(ErrorHandleProblem3 _problem) public {
        _problem.txBegin();

        uint256 errorCode;
        string memory errorMessage;

        // throwError()를 호출하여 error ErrorData를 받아온뒤,

        // setErrorData()를 통해서 에러 코드와 에러 메시지를 설정한뒤 제출하시오.
        _problem.setErrorData(errorCode, errorMessage);
    }
}
