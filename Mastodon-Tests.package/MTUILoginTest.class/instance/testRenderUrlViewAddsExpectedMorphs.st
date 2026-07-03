render
testRenderUrlViewAddsExpectedMorphs

	| loginView submorphs |
	loginView := MTUILogin new.
	
	loginView renderUrlView.
	
	submorphs := loginView container submorphs.
	
	self assert: submorphs size equals: 2.
	self assert: submorphs first equals: loginView getBaseUrlField.
	self assert: submorphs second class equals: MTUIPushButton