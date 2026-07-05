render-buttons
testGetProfileSwitchButtonClickNoError

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	
	button := profileView getProfileSwitchButton.
	
	self shouldnt: [button doClick] raise: Error