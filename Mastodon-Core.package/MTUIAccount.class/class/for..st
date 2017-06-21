as yet unclassified
for: anAccount
	| accountMorph | 
	accountMorph := self new account: anAccount.
	accountMorph render.
	
	^ accountMorph