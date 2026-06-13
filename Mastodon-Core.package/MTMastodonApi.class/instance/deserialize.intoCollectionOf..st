helpers-requesting
deserialize: aJsonString intoCollectionOf: aClass

	^ (self deserialize: aJsonString) collect: [:jsonObject | aClass from: jsonObject]