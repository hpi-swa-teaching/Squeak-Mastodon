remove
testRemoveAllAccountsOnEmpty

	self shouldnt: [MTAccountStore removeAllAccounts] raise: Error