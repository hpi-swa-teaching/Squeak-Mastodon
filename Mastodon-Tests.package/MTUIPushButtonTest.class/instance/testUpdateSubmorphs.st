updating
testUpdateSubmorphs

	| button |
	button := MTUIPushButton new.
	
	self shouldnt: [button updateSubmorphs] raise: Error