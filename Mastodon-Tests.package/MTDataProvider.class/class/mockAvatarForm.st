fixtures
mockAvatarForm

	| pixels index |
	pixels := Array new: 8 * 8 withAll: 4294967295.
	1 to: 8 do: [:r |
		1 to: 8 do: [:c |
			index := r - 1 * 8 + c.
			(r = 1 or: [r = 8] or: [c = 1] or: [c = 8]) ifTrue: [pixels at: index put: 4280191205] ifFalse: [
				((r between: 3 and: 6) and: [c between: 3 and: 6])
					ifTrue: [pixels at: index put: 4294826037]
					ifFalse: [
						pixels
							at: index
							put: 4294967295]]]].
	^ Form extent: 8 @ 8 depth: 32 fromArray: pixels offset: 0 @ 0