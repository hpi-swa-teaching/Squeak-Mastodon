remove
testRemoveAccountOnEmptyList

	self shouldnt: [MTAccountStore removeAccount: self firstAccount] raise: Error