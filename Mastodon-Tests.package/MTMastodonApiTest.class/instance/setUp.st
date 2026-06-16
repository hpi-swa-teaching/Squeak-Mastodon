running
setUp

	instance := MTMastodonApi getInstance.
	MTMastodonApi changeInstanceTo: DataProvider firstAccountCredentials.
	
	super setUp