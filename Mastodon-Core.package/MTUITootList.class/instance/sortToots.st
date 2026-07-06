updating
sortToots

	self sortBlock ifNil: [^ self].
	self toots sort: self sortBlock.
	self render