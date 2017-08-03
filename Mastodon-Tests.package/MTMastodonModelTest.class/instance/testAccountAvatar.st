as yet unclassified
testAccountAvatar
	| Model |
	
	Model := MTAccount new.
	
	Model avatar: 'eine url'.
	
	self assert: (Model avatar)  equals: ('eine url'). 