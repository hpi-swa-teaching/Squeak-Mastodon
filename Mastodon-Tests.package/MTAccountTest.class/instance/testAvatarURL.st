getter/setter
testAvatarURL

	| Model |
	Model := MTAccount new.
	
	Model avatarURL: DataProvider defaultAvatarURL.
	
	self assert: Model avatarURL equals: DataProvider defaultAvatarURL.