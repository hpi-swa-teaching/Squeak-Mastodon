render-buttons
testGetDirectTootButtonNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getDirectTootButton notNil