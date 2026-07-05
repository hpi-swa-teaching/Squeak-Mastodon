defaults
quotePolicyTranslations

	^ Dictionary new
		at: 'public' put: 'Anyone';
		at: 'followers' put: 'Followers only';
		at: 'nobody' put: 'Just me';
		yourself