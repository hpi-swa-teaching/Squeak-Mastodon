initialization
from: aJsonObject
	
	^ self new
		id: (aJsonObject at: 'id');
		createdAt: (aJsonObject at: 'created_at');
		content: (aJsonObject at: 'content');
		reblog: ((aJsonObject at: 'reblog') ifNotNil: [:reblog | MTToot from: reblog]);
		quote: ((aJsonObject at: 'quote') ifNotNil: [:quote | (quote at: 'quoted_status') ifNotNil: [:quoted_status | MTToot from: quoted_status]]);
		account: (MTAccount from: (aJsonObject at: 'account'));
		favourited: (MTUtils stringToBool: (aJsonObject at: 'favourited'));
		reblogged: (MTUtils stringToBool: (aJsonObject at: 'reblogged'));
		reblogsCount: (aJsonObject at: 'reblogs_count');
		favouritesCount: (aJsonObject at: 'favouritesCount');
		inReplyToAccountID: (aJsonObject at: 'in_reply_to_account_id');
		inReplyToID: (aJsonObject at: 'in_reply_to_id');
		urls: (aJsonObject at: 'url');
		media: ((aJsonObject at: 'media_attachments') collect: [:json | MTMedia from: json]);
		yourself