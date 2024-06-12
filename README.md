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

#### 4. `src` 디렉토리에 `문제번호/문제이름.sol` 파일을 찾아 문제를 풉니다.

#### 5. 문제를 풀었다면 `make` 명령어를 사용해 시뮬레이션을 실행합니다.

```bash
$ make simulate PROBLEM=문제번호 INSTANCE=인스턴스주소
```

#### 6. 시뮬레이션이 성공적으로 완료되면 이번에는 풀이를 제출합니다.

```bash
$ make solve PROBLEM=문제번호 INSTANCE=인스턴스주소
```

#### 7. 제출이 성공적으로 완료되면 [Web3OJ](https://app.web3oj.com/)에서 인스턴스를 제출합니다.

## 로드맵

- [x] 문제풀이 간소화 및 템플릿화
- [ ] 모든 문제 추가
- [ ] 테스트 작성

## 기여하기

이 저장소는 문제풀이 템플릿을 제공하기 위한 저장소입니다. 문제풀이 템플릿을 개선하거나 문제를 추가하고 싶다면 이 저장소에 Pull Request를 보내주세요. 언제든지 환영합니다!

## 라이센스

- [MIT](./LICENSE)
