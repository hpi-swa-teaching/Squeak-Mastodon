accessing
relationship

	^ relationship ifNil: [relationship := self mastodonApi getRelationship: self account id]