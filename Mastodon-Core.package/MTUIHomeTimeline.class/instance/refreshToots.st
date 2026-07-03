updating
refreshToots

	(self socialProvider isKindOf: MTBlueSkyApi) ifFalse: [
		self socialProvider token isNil ifTrue: [^ self loadPublicToots].
		^ super refreshToots].
	^ false