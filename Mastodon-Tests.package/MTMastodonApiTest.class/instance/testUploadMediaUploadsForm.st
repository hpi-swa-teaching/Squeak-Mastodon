media endpoints
testUploadMediaUploadsForm

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"id":"9","type":"image"}').
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api uploadMediaFrom: DataProvider mockAvatarForm.
	
	self assert: (result includesSubstring: '"id":"9"').
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/media/'.
	self assert: (client lastPostType includesSubstring: 'multipart/form-data')