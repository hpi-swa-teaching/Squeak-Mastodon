helpers
testHasAccount

	MTAccountStore addAccount: self firstAccount.
	self assert: (MTAccountStore hasAccount: self firstAccount)