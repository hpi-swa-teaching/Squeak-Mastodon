render
getEditableAvatar

	| avatar |
	avatar := MTMedia imageMorphFrom: account avatar.
	avatar ifNil: [^ self error: 'Could not load avatar'].
	
	avatar
		width: self defaultWidth;
		height: self defaultWidth;
		on: #mouseUp send: #changeProfileImage to: self.
	
	^ avatar