as yet unclassified
mockPreviewForm

	| pixels index |
	pixels := Array new: 16 * 9 withAll: 4294174197.
	1 to: 9 do: [:r |
		1 to: 16 do: [:c |
			index := r - 1 * 16 + c.
			(r = 1 or: [r = 9] or: [c = 1] or: [c = 16]) ifTrue: [pixels at: index put: 4281812815] ifFalse: [
				((r between: 3 and: 7) and: [c between: 5 and: 12])
					ifTrue: [pixels at: index put: 4293212469]
					ifFalse: [
						((r
							between: 2
							and: 4) and: [c between: 2 and: 4]) ifTrue: [pixels at: index put: 4282622023] ifFalse: [
							((r between: 6 and: 8) and: [c between: 13 and: 15])
								ifTrue: [pixels at: index put: 4294947584]
								ifFalse: [
									pixels
										at: index
										put: 4294174197]]]]]].
	^ Form extent: 16 @ 9 depth: 32 fromArray: pixels offset: 0 @ 0