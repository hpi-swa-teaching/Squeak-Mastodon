initialization
from: aJsonObject
	^ self new
		text: (aJsonObject at: 'text');
		mediaIDs: (aJsonObject at: 'media_ids');
		inReplyToID: (aJsonObject at: 'in_reply_to_id');
		yourself