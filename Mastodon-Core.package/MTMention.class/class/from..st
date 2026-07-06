initialization
from: aJsonObject

	^ self new
		id: (aJsonObject at: 'id');
		type: (aJsonObject at: 'type');
		createdAt: (aJsonObject at: 'created_at');
		acct: ((aJsonObject at: 'acct') ifNotNil: [:json | MTAccount from: json]);
		status: ((aJsonObject at: 'status') ifNotNil: [:json | MTToot from: json]);
		yourself