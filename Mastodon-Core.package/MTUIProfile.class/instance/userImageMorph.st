as yet unclassified
userImageMorph
	| image |  
	image := STMedia imageMorphFrom: self user profileImageUrl.
	image ifNotNil: [
		image
			width: 200;
			height: 200].

	^ image