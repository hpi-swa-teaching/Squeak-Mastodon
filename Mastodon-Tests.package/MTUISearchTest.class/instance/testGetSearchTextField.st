render
testGetSearchTextField

	| searchView searchTextField |
	searchView := MTUISearch new.
	
	searchTextField := searchView getSearchTextField.
	
	self assert: searchTextField helpText equals: searchView searchTextFieldHelpText