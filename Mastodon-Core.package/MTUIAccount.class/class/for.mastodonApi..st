initialization
for: anAccount mastodonApi: anApi

	| accountMorph |
	accountMorph := self new.
	accountMorph account: anAccount.
	accountMorph mastodonApi: anApi.
	accountMorph render.
	^ accountMorph