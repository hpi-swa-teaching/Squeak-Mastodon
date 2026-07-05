initialization
for: anAccount socialProvider: anApi

	| accountMorph |
	accountMorph := self new.
	accountMorph account: anAccount.
	accountMorph socialProvider: anApi.
	accountMorph render.
	^ accountMorph