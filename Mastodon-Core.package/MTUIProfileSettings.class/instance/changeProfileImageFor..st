actions
changeProfileImageFor: anImage

	self avatarField
		image: (anImage scaledToSize: self fieldWidth);
		changed