tests
testReset

	MTMastodonApi
		changeInstanceTo: DataProvider firstAccountCredentials;
		removeInstance.
	
	self assert: MTMastodonApi getInstance isNil.