defaults
visibilityTranslations

	^ Dictionary new
		at: 'public' put: 'Public';
		at: 'unlisted' put: 'Quiet public';
		at: 'private' put: 'Followers';
		at: 'direct' put: 'Private mention';
		yourself