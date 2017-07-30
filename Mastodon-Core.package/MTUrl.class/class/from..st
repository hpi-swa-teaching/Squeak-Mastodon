initialize
from: aJsonObject 
	^(self new)
		shortUrl: (aJsonObject at: 'url');
		expandedUrl: (aJsonObject at: 'expanded_url');
		displayUrl: (aJsonObject at: 'display_url');
		yourself 
	