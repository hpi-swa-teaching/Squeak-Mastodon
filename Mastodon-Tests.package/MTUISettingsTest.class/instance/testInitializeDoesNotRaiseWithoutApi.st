tests
testInitializeDoesNotRaiseWithoutApi

	[MTUISettings new] on: Error do: [:ex | self fail: ex description]