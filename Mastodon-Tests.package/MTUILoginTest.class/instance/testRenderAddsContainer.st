render
testRenderAddsContainer

	| loginView |
	loginView := MTUILogin new render.
	
	self assert: loginView container notNil.
	self assert: (loginView submorphs includes: loginView container)