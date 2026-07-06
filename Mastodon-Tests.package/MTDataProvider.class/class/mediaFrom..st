helpers
mediaFrom: aJson

	^ MTMediaAttachment new
		id: (aJson at: 'id');
		type: (aJson at: 'type');
		url: (aJson at: 'url');
		previewUrl: (aJson at: 'preview_url');
		yourself