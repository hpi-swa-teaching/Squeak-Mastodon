initialization
from: aJsonObject

	aJsonObject ifNil: [^ nil].
	^ self new
		id: (aJsonObject at: 'id');
		createdAt: (aJsonObject at: 'created_at');
		content: (aJsonObject at: 'content');
		inReplyToID: (aJsonObject at: 'in_reply_to_id');
		acct: (MTAccount from: (aJsonObject at: 'account'));
		favourited: (MTUtils stringToBool: (aJsonObject at: 'favourited'));
		reblogged: (MTUtils stringToBool: (aJsonObject at: 'reblogged'));
		reblog: (MTToot from: (aJsonObject at: 'reblog'));
		reblogsCount: (aJsonObject at: 'reblogs_count');
		favouritesCount: (aJsonObject at: 'favourites_count');
		repliesCount: (aJsonObject at: 'replies_count');
		urls: (aJsonObject at: 'url');
		media: ((aJsonObject at: 'media_attachments') collect: [:json | MTMedia from: json]);
		yourself