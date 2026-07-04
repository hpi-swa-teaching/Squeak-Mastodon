initialization
from: aJsonObject
	
	^ self new
		accounts: ((aJsonObject at: 'accounts') collect: [:each | MTAccount from: each]);
		yourself