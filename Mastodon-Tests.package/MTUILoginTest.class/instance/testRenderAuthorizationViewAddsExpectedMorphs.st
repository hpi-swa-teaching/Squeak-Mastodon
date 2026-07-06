render
testRenderAuthorizationViewAddsExpectedMorphs

	| loginView submorphs |
	loginView := MTUILogin new.
	
	loginView renderAuthorizationView.
	submorphs := loginView container submorphs.
	
	self assert: submorphs size equals: 3.
	self assert: submorphs first class equals: MTLineEdit.
	self assert: submorphs second class equals: MTUIPushButton.
	self assert: submorphs third equals: loginView resultTextMorph