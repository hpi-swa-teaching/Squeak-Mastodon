as yet unclassified
from: aJsonObject
	^ (self new)
		id: (aJsonObject at: 'id');
		type: (aJsonObject at: 'type');
		url: (aJsonObject at: 'url');
		previewUrl: (aJsonObject at: 'preview_url');
		yourself.