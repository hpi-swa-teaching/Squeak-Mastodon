change reporting
ownerChanged
	| postWidth |
	self owner ifNil: [ ^ self ].
	self post ifNil: [ ^ self ].
	postWidth := self owner width - 80.
	postWidth := postWidth max: 0.
	self post width: postWidth.
	self account ifNotNil: [ self account width: postWidth ].
	self content ifNotNil: [ self content width: postWidth ].
	self reblog ifNotNil: [ self reblog width: postWidth ].
	self createdAt ifNotNil: [ self createdAt width: postWidth ].