imageMorphFrom: anUrl
	| image cachedForm providerKey fetchUrl form |

	anUrl ifNil: [ ^ nil ].

	fetchUrl := anUrl.

	cachedForm := MTImageCache default imageFormFrom: anUrl.
	cachedForm ifNotNil: [ ^ (MTUIImageMorph new) setNewImageFrom: cachedForm ].

	providerKey := MTSettingsStore default at: #provider ifAbsent: [ #mastodon ].
	providerKey isString ifTrue: [ providerKey := providerKey asLowercase asSymbol ].

	providerKey = #bluesky ifTrue: [
		fetchUrl := 'https://webp-converter.dropping.workers.dev?url=', anUrl.
	].

	image := MTUIImageMorph new.

	form := self formFrom: fetchUrl.

	form ifNil: [ ^ image "leave empty on error" ].

	MTImageCache default cache: form from: anUrl.
	image setNewImageFrom: form.

	^ image