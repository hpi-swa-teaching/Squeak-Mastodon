getter/setter
testAvatar

	| account |
	account := MTAccount new.
	
	account avatar: DataProvider defaultAvatarUrl.
	
	self assert: account avatar equals: DataProvider defaultAvatarUrl