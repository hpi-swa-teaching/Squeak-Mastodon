as yet unclassified
for: anAccount profileView: aProfileView

	^ self new
		account: anAccount;
		profileView: aProfileView;
		render;
		yourself