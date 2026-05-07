tests
testDeserializeJson
	| api json |
	api := MTBlueSkyApi new.

	json := api deserialize: '{"handle":"alice.bsky.social"}'.

	self assert: (json at: 'handle') equals: 'alice.bsky.social'
