initialization
for: anID
	
	^ self new 
		accountID: anID;
		loadToots;
		yourself