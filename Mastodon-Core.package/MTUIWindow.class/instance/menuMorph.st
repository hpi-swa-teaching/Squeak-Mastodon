accessing-morph
menuMorph

	^ menuMorph ifNil: [
		menuMorph := MTUIMenu new
			color: Color transparent;
			yourself]