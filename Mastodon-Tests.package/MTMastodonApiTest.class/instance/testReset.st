tests
testReset

	MTMastodonApi
		changeInstanceTo: MTDataProvider firstAccountCredentials;
		removeInstance.
	
	self assert: MTMastodonApi getInstance baseUrl isNil.
	self assert: MTMastodonApi getInstance token isNil.
	self assert: MTMastodonApi getInstance clientID isNil.
	self assert: MTMastodonApi getInstance clientSecret isNil.