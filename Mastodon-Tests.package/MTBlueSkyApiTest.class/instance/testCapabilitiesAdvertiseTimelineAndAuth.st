tests
testCapabilitiesAdvertiseTimelineAndAuth
	| api |
	api := MTBlueSkyApi new.

	self assert: (api supportsFeature: #timeline) equals: true.
	self assert: (api supportsFeature: #auth) equals: true.
	self assert: (api supportsFeature: #post) equals: false.
	self assert: (api supportsFeature: #search) equals: false.
	self assert: api capabilities equals: #(timeline auth) asSet
