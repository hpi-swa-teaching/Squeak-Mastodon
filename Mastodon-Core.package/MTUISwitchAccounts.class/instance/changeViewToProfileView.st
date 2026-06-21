actions
changeViewToProfileView

	self profileView
		removeAllMorphs;
		account: MTMastodonApi getInstance getCurrentUser value;
		render.
	self delete.