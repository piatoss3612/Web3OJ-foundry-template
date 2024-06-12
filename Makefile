include .env

PROBLEM ?= 0
RPC_URL ?= sepolia
ACCOUNT ?= $(ACCOUNT)
SENDER ?= $(SENDER)
INSTANCE ?= 0x0

.PHONY: solve
solve:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	elif [ $(PROBLEM) -ge 1 -a $(PROBLEM) -le 31 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --broadcast -vvvv --sig "solve(address)" -- $(INSTANCE); \
	else \
		echo "Invalid PROBLEM value $(PROBLEM). Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	fi

.PHONY: simulate
simulate:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to simulate (1 ~ 31)."; \
		exit 1; \
	elif [ $(PROBLEM) -ge 1 -a $(PROBLEM) -le 31 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) -vvvv --sig "solve(address)" -- $(INSTANCE); \
	else \
		echo "Invalid PROBLEM value $(PROBLEM). Please specify a PROBLEM variable to simulate (1 ~ 31)."; \
		exit 1; \
	fi
