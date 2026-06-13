tests
testEncodeProfileFormIncludesTextFields

	| account dict body |
	account := mastodonApi deserialize: DataProvider defaultAccountJsonString intoObjectOf: MTAccount.
	dict := Dictionary new.
	dict at: 'display_name' put: account displayName.
	dict at: 'note' put: account note.
	body := mastodonApi encodeProfileForm: dict avatar: nil header: nil boundary: 'BOUND'.
	dict keysAndValuesDo: [:key :value |
		self assert: (body indexOfSubCollection: 'name="', key, '"') > 0.
		self assert: (body indexOfSubCollection: value asString) > 0]