add/remove
removeAccount: anAccount

	self accounts removeAllSuchThat: [:each | each equals: anAccount]