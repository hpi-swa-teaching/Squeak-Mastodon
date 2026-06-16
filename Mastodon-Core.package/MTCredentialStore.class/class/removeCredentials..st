add/remove
removeCredentials: aCredential

	self credentials removeAllSuchThat: [:each | each equals: aCredential]