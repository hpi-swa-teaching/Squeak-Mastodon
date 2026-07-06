render-buttons
testGetBlockButtonNotNil

	| profileView |
	profileView := self getProfileViewForSecondAccount.
	
	self assert: profileView getBlockButton notNil