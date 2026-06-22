accessing
container

	^ container ifNil: [container := self getContainer]