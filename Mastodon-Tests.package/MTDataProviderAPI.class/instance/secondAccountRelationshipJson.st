responses-relationships
secondAccountRelationshipJson

	^ JsonObject new
		at: 'blocked_by' put: false;
		at: 'blocking' put: false;
		at: 'domain_blocking' put: false;
		at: 'endorsed' put: false;
		at: 'followed_by' put: true;
		at: 'following' put: false;
		at: 'id' put: '116800000000000002';
		at: 'languages' put: nil;
		at: 'muting' put: false;
		at: 'muting_expires_at' put: nil;
		at: 'muting_notifications' put: false;
		at: 'note' put: '';
		at: 'notifying' put: false;
		at: 'requested' put: false;
		at: 'requested_by' put: false;
		at: 'showing_reblogs' put: false;
		yourself