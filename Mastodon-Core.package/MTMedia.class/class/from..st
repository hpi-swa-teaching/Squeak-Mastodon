initialize
from: aJsonObject
	^ (self new)
		id: (aJsonObject at: 'id');
		type: (aJsonObject at: 'type');
		buildUrl: (aJsonObject at: 'url');
		previewUrl: (aJsonObject at: 'preview_url');
		yourself.