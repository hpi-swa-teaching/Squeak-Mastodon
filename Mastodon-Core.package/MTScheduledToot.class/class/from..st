initialization
from: aJsonObject

	^ self new
		id: (aJsonObject at: 'id');
		scheduledAt: (aJsonObject at: 'scheduled_at');
		params: (MTScheduledTootParams from: (aJsonObject at: 'params'));
		media: ((aJsonObject at: 'media_attachments') collect: [:json | MTMedia from: json]);
		yourself