tests
testEncodeProfileFormOmitsImagesWhenNil

	| body |
	body := mastodonApi encodeProfileForm: Dictionary new avatar: nil header: nil boundary: 'BOUND'.
	self assert: (body indexOfSubCollection: 'name="avatar"') = 0.
	self assert: (body indexOfSubCollection: 'name="header"') = 0