helpers
savedFeedItemForUri: aUri pinned: aBoolean

	^ Dictionary new
		at: 'id' put: aUri;
		at: 'type' put: 'feed';
		at: 'value' put: aUri;
		at: 'pinned' put: aBoolean;
		yourself