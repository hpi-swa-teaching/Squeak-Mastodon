add/remove
addAccount: anAccount

	anAccount containsEmptyField ifTrue: [^ self].
	
	self accounts add: anAccount.
	self defaultAccount: anAccount