helpers
flushCaches

	MTAccountCache default flush.
	MTRelationshipCache default flush.
	MTImageCache default flush.
	self getInstance currentUser: nil.