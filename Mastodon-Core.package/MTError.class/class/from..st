as yet unclassified
from: aJsonObject		
	^ (self new)
		errors: (aJsonObject at: 'errors');
		yourself 