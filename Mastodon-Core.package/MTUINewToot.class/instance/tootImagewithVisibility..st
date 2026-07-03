toot
tootImagewithVisibility: aVisibility

	| imageID json |
	json := self socialProvider uploadMediaFrom: self imageMorph imageForm.
	imageID := (self socialProvider deserialize: json) at: 'id'.
	self socialProvider toot: self tootTextArea contents asString withMedia: imageID withVisibility: aVisibility