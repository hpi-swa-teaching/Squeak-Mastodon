helpers
hasCredentials: aCredential

	^ self credentials contains: [:each | each = aCredential]