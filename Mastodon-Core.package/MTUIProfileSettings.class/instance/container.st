accessing
container

	^ container ifNil: [container := self getProfileContainer]