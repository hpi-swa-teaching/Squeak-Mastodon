remove
testRemoveAccountNoMatchingURL

	MTAccountStore
		addAccount: self firstAccount;
		removeAccount: self firstAccountWithDifferentBaseURL.
	
	self assert: (MTAccountStore hasAccount: self firstAccount)