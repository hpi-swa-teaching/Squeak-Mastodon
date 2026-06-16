helpers
containsEmptyField

	^ {self baseURL. self token} contains: [:each | each isNil or: [each = '']]