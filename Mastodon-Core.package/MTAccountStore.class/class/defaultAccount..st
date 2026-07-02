accessing
defaultAccount: anAccount

	(self hasAccount: anAccount) ifFalse: [^ self].
	^ defaultAccount := anAccount