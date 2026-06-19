helpers
savedFeedItemFor: aFeed
	^ Dictionary new
		at: 'id' put: aFeed uri;
		at: 'type' put: 'feed';
		at: 'value' put: aFeed uri;
		at: 'pinned' put: aFeed pinned;
		yourself
