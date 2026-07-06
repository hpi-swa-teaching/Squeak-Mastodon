render-container
testGetContainerNotNil

	| searchView |
	searchView := MTUISearch new.
	
	self assert: searchView getContainer notNil