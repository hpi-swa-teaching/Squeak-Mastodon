helpers
containsEmptyField

	^ {self username. self baseURL. self token} contains: [:each | each isNil or: [each = '']]