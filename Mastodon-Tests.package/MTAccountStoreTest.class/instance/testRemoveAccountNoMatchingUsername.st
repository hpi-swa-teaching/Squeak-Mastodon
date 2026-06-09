remove
testRemoveAccountNoMatchingUsername

	MTAccountStore
		addAccount: self firstAccount;
		removeAccount: self firstAccountWithDifferentUsername.
	
	self assert: (MTAccountStore hasAccount: self firstAccount)