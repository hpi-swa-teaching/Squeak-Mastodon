render-buttons
testGetBlockButtonNoError

	| profileView |
	profileView := self getProfileViewForSecondAccount.
	
	self shouldnt: [profileView getBlockButton] raise: Error