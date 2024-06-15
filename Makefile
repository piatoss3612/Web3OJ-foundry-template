PROBLEM ?= 0
RPC_URL ?= sepolia
ACCOUNT ?= piatoss
SENDER ?= 0x965B0E63e00E7805569ee3B428Cf96330DFc57EF
INSTANCE ?= 0x0

# additional arguments
ARGS ?= ""

.PHONY: solve
solve:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	elif [ $(PROBLEM) -eq 8 -o $(PROBLEM) -eq 9 -o $(PROBLEM) -eq 19 -o $(PROBLEM) -eq 20 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --broadcast --sig "solve(address,address)" -- $(INSTANCE) $(ARGS); \
	elif [ $(PROBLEM) -eq 22 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --broadcast --sig "solve(address,uint256)" -- $(INSTANCE) $(ARGS); \
	elif [ $(PROBLEM) -ge 1 -a $(PROBLEM) -le 31 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --broadcast --sig "solve(address)" -- $(INSTANCE); \
	else \
		echo "Invalid PROBLEM value $(PROBLEM). Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	fi

.PHONY: simulate
simulate:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to simulate (1 ~ 31)."; \
		exit 1; \
	elif [ $(PROBLEM) -eq 8 -o $(PROBLEM) -eq 9 -o $(PROBLEM) -eq 19 -o $(PROBLEM) -eq 20 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --sig "solve(address,address)" -- $(INSTANCE) $(ARGS); \
	elif [ $(PROBLEM) -eq 22 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --sig "solve(address,uint256)" -- $(INSTANCE) $(ARGS); \
	elif [ $(PROBLEM) -ge 1 -a $(PROBLEM) -le 31 ]; then \
		PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
		echo "Running Problem $${PROBLEM_PADDED} script..."; \
		forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) --sig "solve(address)" -- $(INSTANCE); \
	else \
		echo "Invalid PROBLEM value $(PROBLEM). Please specify a PROBLEM variable to simulate (1 ~ 31)."; \
		exit 1; \
	fi
