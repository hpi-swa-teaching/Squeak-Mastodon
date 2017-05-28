as yet unclassified
from: aJsonObject
	^ (self new)
		mediaUrl: (aJsonObject at: 'media_url');
		thumbnailMediaUrl: (aJsonObject at: 'media_url'), ':thumb';
		yourself.