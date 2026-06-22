accessing
container

	^ container ifNil: [container := self getProfileContainer vResizing: #spaceFill]