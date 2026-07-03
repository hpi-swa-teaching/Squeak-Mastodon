render-containers
testGetContainer

	| loginView container |
	loginView := MTUILogin new.
	
	self shouldnt: [container := loginView getContainer] raise: Error.
	self assert: container notNil