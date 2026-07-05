toot
testTootMedia

	| model |
	model := MTToot new.
	
	model media: false.
	
	self assert: model media equals: false