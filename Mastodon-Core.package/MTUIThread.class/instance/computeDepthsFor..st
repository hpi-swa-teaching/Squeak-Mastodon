updating
computeDepthsFor: aCollection

	| tootId |
	tootId := Dictionary new.
	aCollection do: [:toot | tootId at: toot id put: toot].

	depths := Dictionary new.
	aCollection do: [:toot |
		| depth ancestor |
		depth := 0.
		ancestor := toot.
		[ancestor notNil and: [ancestor id ~= self rootToot id]] 
			whileTrue: [
				depth := depth + 1.
				ancestor := tootId at: ancestor inReplyToID ifAbsent: [nil]].
		depths at: toot id put: depth]