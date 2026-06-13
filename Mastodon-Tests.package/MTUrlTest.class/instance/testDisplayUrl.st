getter/setter
testDisplayUrl

	| url |
	url := MTUrl new.
	
	url displayUrl: DataProvider defaultDisplayUrl.
	
	self assert: url displayUrl equals: DataProvider defaultDisplayUrl