actions
testRefreshAccountMorphsAddsMorphsToView

	| searchView |
	searchView := MTUISearch new.
	searchView accounts: {MTDataProvider firstAccount. MTDataProvider secondAccount}.
	
	searchView refreshAccountMorphs.
	
	searchView accountMorphs do: [:each | self assert: (searchView submorphs includes: each)]