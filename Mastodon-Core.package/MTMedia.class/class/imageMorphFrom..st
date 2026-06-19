loading
imageMorphFrom: anUrl
	| doc form image cachedForm providerKey fetchUrl |

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

	form := [
		doc := HTTPSocket httpGet: fetchUrl.
		doc binary; reset.
		ImageReadWriter formFromStream: doc.
	] on: Error do: [ :e | nil ].

	form
		ifNil: [ ^ image "leave it empty / unset" ]
		ifNotNil: [
			MTImageCache default cache: form from: anUrl.
			image setNewImageFrom: form.
		].

	^ image