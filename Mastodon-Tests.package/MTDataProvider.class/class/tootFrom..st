helpers
tootFrom: aJson

	^ MTToot new
		id: (aJson at: 'id');
		createdAt: (aJson at: 'created_at');
		content: (aJson at: 'content');
		reblog: ((aJson at: 'reblog') ifNotNil: [:reblog | MTToot from: reblog]);
		quote: ((aJson at: 'quote') ifNotNil: [:quote | (quote at: 'quoted_status') ifNotNil: [:quoted_status | MTToot from: quoted_status]]);
		account: (MTAccount from: (aJson at: 'account'));
		favourited: (MTUtils stringToBool: (aJson at: 'favourited'));
		reblogged: (MTUtils stringToBool: (aJson at: 'reblogged'));
		reblogsCount: (aJson at: 'reblogs_count');
		favouritesCount: (aJson at: 'favourites_count');
		inReplyToAccountID: (aJson at: 'in_reply_to_account_id');
		inReplyToID: (aJson at: 'in_reply_to_id');
		url: (aJson at: 'url');
		media: ((aJson at: 'media_attachments') collect: [:json | MTMediaAttachment from: json]);
		yourself