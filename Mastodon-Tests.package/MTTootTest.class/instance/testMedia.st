getter/setter
testMedia

	| toot |
	toot := MTToot new.
	
	toot media: DataProvider defaultImage.
	
	self assert: toot media equals: DataProvider defaultImage