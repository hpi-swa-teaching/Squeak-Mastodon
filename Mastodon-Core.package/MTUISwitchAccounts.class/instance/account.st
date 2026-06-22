accessing
account

	^ account ifNil: [account := MTMastodonApi getInstance getCurrentUser value]