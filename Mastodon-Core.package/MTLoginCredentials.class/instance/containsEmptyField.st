helpers
containsEmptyField

	^ {self baseUrl. self token} contains: [:each | each isNil or: [each = '']]