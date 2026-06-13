render
userImageMorph

	| image |
	image := MTMedia new imageMorphFrom: self user avatar.
	image ifNotNil: [
		image
			width: 200;
			height: 200].
	
	^ image