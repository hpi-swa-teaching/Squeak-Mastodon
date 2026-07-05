accessing
token

	^ token ifNil: [token := MTDataProvider firstToken]