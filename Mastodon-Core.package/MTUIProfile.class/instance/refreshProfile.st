updating
refreshProfile

	self profileMorph: nil.
	self account: (MTMastodonApi getInstance getAccount: self account id) value