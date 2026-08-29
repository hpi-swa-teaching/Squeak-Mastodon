posting
testUploadBlobSendsImageBytes

	| api client blob |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"blob":{"$type":"blob","ref":{"$link":"bafkblob"},"mimeType":"image/png","size":42}}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	blob := api uploadBlobFrom: (Form extent: 4 @ 4 depth: 32).
	
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.uploadBlob'.
	self assert: client lastPostType equals: 'image/png'.
	self assert: (blob at: 'mimeType') equals: 'image/png'.
	self assert: ((blob at: 'ref') at: '$link') equals: 'bafkblob'