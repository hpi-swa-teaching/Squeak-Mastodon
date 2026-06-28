updating
computeDepthsFor: aCollection

	| tootById |
	tootById := Dictionary new.
	aCollection do: [:toot | tootById at: toot id put: toot].

	depths := Dictionary new.
	aCollection do: [:toot |
		| depth ancestor |
		depth := 0.
		ancestor := tootById at: toot inReplyToID ifAbsent: [nil].
		[ancestor notNil]
			whileTrue: [
				depth := depth + 1.
				ancestor := tootById at: ancestor inReplyToID ifAbsent: [nil]].
		depths at: toot id put: depth]