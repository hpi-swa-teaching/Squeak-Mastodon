tests
testEncodeProfileFormIncludesTextFields

	| account dict body |
	account := MTMastodonApi getInstance deserialize: MTDataProvider defaultAccountJsonString intoObjectOf: MTAccount.
	
	dict := Dictionary new.
	dict at: 'display_name' put: account displayName.
	dict at: 'note' put: account note.
	body := MTMastodonApi getInstance encodeProfileForm: dict avatar: nil header: nil boundary: 'BOUND'.
	
	dict keysAndValuesDo: [:key :value |
		self assert: (body indexOfSubCollection: 'name="', key, '"') > 0.
		self assert: (body indexOfSubCollection: value asString) > 0]