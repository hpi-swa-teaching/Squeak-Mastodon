initialization
from: aJsonObject

	^ self new
		text: (aJsonObject at: 'text');
		inReplyToID: (aJsonObject at: 'in_reply_to_id');
		yourself