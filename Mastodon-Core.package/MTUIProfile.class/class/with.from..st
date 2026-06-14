initialization
with: aUserTimelineMorph from: anAccount

	^ self new
		account: anAccount;
		timelineMorph: aUserTimelineMorph;
		render;
		yourself