render
getAccountBanner

	| banner accountId |
	accountId := self mastodonApi getCurrentUser id.
	banner := self getGeneralUserBanner.
	
	accountId = self account id
		ifTrue: [banner addMorphFront: self getSettingsToolbar]
		ifFalse: [banner addMorphBack: self getInteractionButtons].
	
	^ banner