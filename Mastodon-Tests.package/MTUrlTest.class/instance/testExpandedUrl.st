getter/setter
testExpandedUrl

	| url |
	url := MTUrl new.
	
	url expandedUrl: DataProvider defaultExpandedUrl.
	
	self assert: url expandedUrl equals: DataProvider defaultExpandedUrl