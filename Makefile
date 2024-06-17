PROBLEM ?= 0
RPC_URL ?= sepolia
ACCOUNT ?= piatoss
SENDER ?= 0x0
INSTANCE ?= 0x0

# additional arguments
ARGS ?= ""

# Function to run script with appropriate signature
define run_script
	PROBLEM_PADDED=$$(printf "%02d" $(PROBLEM)); \
	echo "Running Problem $${PROBLEM_PADDED} script..."; \
	forge script script/$${PROBLEM_PADDED}.s.sol --rpc-url $(RPC_URL) --account $(ACCOUNT) --sender $(SENDER) $$BROADCAST --sig "$$SIG" -- $(INSTANCE) $(ARGS)
endef

# Determine the signature based on the problem number
define set_signature
	if [ $(PROBLEM) -eq 8 -o $(PROBLEM) -eq 9 -o $(PROBLEM) -eq 19 -o $(PROBLEM) -eq 20 ]; then \
		export SIG="solve(address,address)"; \
	elif [ $(PROBLEM) -eq 22 ]; then \
		export SIG="solve(address,uint256)"; \
	elif [ $(PROBLEM) -ge 1 -a $(PROBLEM) -le 31 ]; then \
		export SIG="solve(address)"; \
	else \
		echo "Invalid PROBLEM value $(PROBLEM). Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	fi
endef

.PHONY: solve
solve:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to solve (1 ~ 31)."; \
		exit 1; \
	else \
		$(set_signature); \
		export BROADCAST="--broadcast"; \
		$(run_script); \
	fi

.PHONY: simulate
simulate:
	@if [ $(PROBLEM) -eq 0 ]; then \
		echo "Please specify a PROBLEM variable to simulate (1 ~ 31)."; \
		exit 1; \
	else \
		$(set_signature); \
		export BROADCAST=""; \
		$(run_script); \
	fi
