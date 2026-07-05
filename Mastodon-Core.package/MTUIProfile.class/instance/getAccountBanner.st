render
getAccountBanner

	| accountBanner currentAccountId |
	currentAccountId := self mastodonApi getCurrentUser value id.
	accountBanner := self getGeneralAccountBanner.
	
	currentAccountId = self account id
		ifTrue: [accountBanner addMorph: self settingsButtons]
		ifFalse: [accountBanner addMorphBack: self interactionButtons].
		
	^ accountBanner