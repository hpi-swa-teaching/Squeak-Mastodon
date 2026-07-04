tests
testEncodeProfileFormIncludesAvatarAndHeader
	| body |
	body := MTMastodonApi getInstance
		encodeProfileForm: Dictionary new
		avatar: MTDataProvider mockAvatarForm
		header: MTDataProvider mockPreviewForm
		boundary: 'BOUND'.
	self assert: (body indexOfSubCollection: 'name="avatar"') > 0.
	self assert: (body indexOfSubCollection: 'filename="avatar.png"') > 0.
	self assert: (body indexOfSubCollection: 'name="header"') > 0.
	self assert: (body indexOfSubCollection: 'filename="header.png"') > 0.
	self assert: (body endsWith: '--BOUND--')
