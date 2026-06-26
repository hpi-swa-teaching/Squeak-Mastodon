helpers
relationship

	^ relationship ifNil: [relationship := (self mastodonApi getRelationship: self account id) value at: 1]