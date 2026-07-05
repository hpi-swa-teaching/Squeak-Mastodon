render-buttons
testGetBlockButtonInactiveForUnblockedAccount

	| profileView button |
	profileView := self getProfileViewForSecondAccount.

	button := profileView getBlockButton.

	self deny: button active