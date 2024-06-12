# Web3OJ 문제풀이 템플릿

Foundry를 사용해 [Web3OJ](https://app.web3oj.com/) 문제를 풀고 제출하는 템플릿입니다.

## 목차

- [필요한 도구](#필요한-도구)
- [문제풀이](#문제풀이)
- [로드맵](#로드맵)
- [기여하기](#기여하기)
- [라이센스](#라이센스)

## 필요한 도구

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Make](https://www.gnu.org/software/make/)

## 문제풀이

#### 1. 깃허브 저장소를 클론합니다. 포크한 저장소를 클론해도 됩니다.

```bash
$ git clone https://github.com/piatoss3612/Web3OJ-foundry-template.git
```

#### 2. Makefile 상단에 있는 `ACCOUNT` 및 `SENDER` 변수를 수정합니다.

```makefile
ACCOUNT ?= 계정이름
SENDER ?= 계정주소
```

- [Foundry를 사용해 계정 등록하기](https://piatoss3612.tistory.com/139)

#### 3. [Web3OJ](https://app.web3oj.com/)에서 원하는 문제를 선택하고 인스턴스를 생성합니다.

#### 4. 문제풀이 코드를 작성합니다.

- `src/문제번호/문제이름.sol` 파일의 `이곳에 작성하시오` 부분에 풀이를 작성합니다.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPlusCalculator {
    function plus(uint256, uint256) external pure returns (uint256);
}

contract PlusCalculatorProblem {
    IPlusCalculator public plusCalculator;

    function setPlusCalculator(address _plusCalculator) public {
        plusCalculator = IPlusCalculator(_plusCalculator);
    }
}

contract MyPlusCalculator is IPlusCalculator {
    function plus(uint256 input1, uint256 input2) public pure override returns (uint256) {
        // 이곳에 작성하시오
    }
}
```

- 일부 문제는 스크립트에 추가적인 코드를 작성해야 할 수 있습니다.
- 이 경우 `script/문제번호.s.sol` 파일의 주석을 참고해 문제를 풀면 됩니다.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Transfer, MyERC20} from "src/06/ERC20Transfer.sol";

contract ERC20TransferScript is Script {
    function setUp() public {}

    function solve(address instanceAddress) public {
        vm.startBroadcast();

        ERC20Transfer instance = ERC20Transfer(instanceAddress);

        MyERC20 web3ojt = new MyERC20();

        // 문제 인스턴스 컨트랙트에게 20 WEB3OJT를 전송합니다.

        instance.setWeb3ojt(address(web3ojt));

        vm.stopBroadcast();
    }
}
```

#### 5. 문제를 풀었다면 `make` 명령어를 사용해 시뮬레이션을 실행합니다.

```bash
$ make simulate PROBLEM=문제번호 INSTANCE=인스턴스주소
```

- 일부 문제는 추가적인 인자를 전달해야 할 수 있습니다.
- 이 경우 `ARGS` 변수에 인자를 전달하면 됩니다.

```bash
$ make simulate PROBLEM=문제번호 INSTANCE=인스턴스주소 ARGS="인자1 인자2"
```

#### 6. 시뮬레이션이 성공적으로 완료되면 이번에는 풀이를 제출합니다.

```bash
$ make solve PROBLEM=문제번호 INSTANCE=인스턴스주소
```

#### 7. 제출이 성공적으로 완료되면 [Web3OJ](https://app.web3oj.com/)에서 인스턴스를 제출합니다.

## 정리

| 문제번호 | 문제이름                                                     | 키워드                             |
| -------- | ------------------------------------------------------------ | ---------------------------------- |
| 01       | [덧셈](https://app.web3oj.com/app/problem/1)                 | 사칙연산, 인터페이스               |
| 02       | [뺄셈](https://app.web3oj.com/app/problem/2)                 | 사칙연산, 인터페이스               |
| 03       | [곱셈](https://app.web3oj.com/app/problem/3)                 | 사칙연산, 인터페이스               |
| 04       | [나눗셈](https://app.web3oj.com/app/problem/4)               | 사칙연산, 인터페이스               |
| 05       | [ERC-20 토큰 만들기](https://app.web3oj.com/app/problem/5)   | ERC20, 상속                        |
| 06       | [ERC-20 송금](https://app.web3oj.com/app/problem/6)          | ERC20, 상속, transfer              |
| 07       | [ERC-20 인출 허용하기](https://app.web3oj.com/app/problem/7) | ERC20, 상속, approve               |
| 08       | [ERC-20 인출하기](https://app.web3oj.com/app/problem/8)      | ERC20, 상속, transferFrom          |
| 09       | [ERC-20 Mint 위임하기](https://app.web3oj.com/app/problem/9) | ERC20, 상속, mint, access control  |
| 10       | [ERC-20 소각하기](https://app.web3oj.com/app/problem/10)     | ERC20, 상속, burn                  |
| 11       | [ERC-20 일시정지](https://app.web3oj.com/app/problem/11)     | ERC20, 상속, pause, access control |

## 로드맵

- [x] 문제풀이 간소화 및 템플릿화
- [ ] 모든 문제 추가
- [ ] 테스트 작성

## 기여하기

이 저장소는 문제풀이 템플릿을 제공하기 위한 저장소입니다. 문제풀이 템플릿을 개선하거나 문제를 추가하고 싶다면 이 저장소에 Pull Request를 보내주세요. 언제든지 환영합니다!

## 라이센스

- [MIT](./LICENSE)
