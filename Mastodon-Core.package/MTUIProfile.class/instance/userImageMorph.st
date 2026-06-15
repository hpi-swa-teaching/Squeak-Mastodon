render
userImageMorph
	| image |  
	image := MTMedia imageMorphFrom: self user avatar.
	image ifNotNil: [
		image
			width: 200;
			height: 200].

	^ image