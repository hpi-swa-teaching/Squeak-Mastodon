accessing
editedAvatar

	^ editedAvatar ifNil: [editedAvatar := MTMedia new imageMorphFrom: account avatar]