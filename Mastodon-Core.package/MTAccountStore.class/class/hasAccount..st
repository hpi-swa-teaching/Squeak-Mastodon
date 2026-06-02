helpers
hasAccount: anAccount

	^ self accounts contains: [:each | each = anAccount]