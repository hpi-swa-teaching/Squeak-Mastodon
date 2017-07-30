initialization
from: aJsonObject		
	^ (self new)
		errors: (aJsonObject at: 'errors');
		yourself 