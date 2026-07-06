tests
testEncodeProfileFormIncludesTextFields

	| account dict body form |
	account := MTDataProvider firstAccount.
	form := MTDataProvider emptyImageForm.
	
	dict := Dictionary new
		at: 'display_name' put: account displayName;
		at: 'note' put: account note.
	body := self mastodonApi encodeProfileForm: dict avatar: form header: nil boundary: 'BOUND'.
	
	dict keysAndValuesDo: [:key :value |
		self assert: (body indexOfSubCollection: 'name="', key, '"') > 0.
		self assert: (body indexOfSubCollection: value asString) > 0]