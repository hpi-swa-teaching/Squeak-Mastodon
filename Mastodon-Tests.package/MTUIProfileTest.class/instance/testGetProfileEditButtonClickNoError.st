render-buttons
testGetProfileEditButtonClickNoError

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	
	button := profileView getProfileEditButton.
	
	self shouldnt: [button doClick] raise: Error