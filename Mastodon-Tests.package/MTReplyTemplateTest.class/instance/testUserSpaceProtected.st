as yet unclassified
testUserSpaceProtected
	templateAccess user: 'somebodyElse'.
	self assert: templateAccess templateDirectoryContent isEmpty equals: true.