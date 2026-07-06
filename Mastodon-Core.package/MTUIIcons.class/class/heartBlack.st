icon
heartBlack
	"Heart icon recoloured to black, preserving alpha, for the sidebar tab."

	| source form |
	source := self heart.
	form := Form extent: source extent depth: 32.
	1 to: source bits size do: [:i | form bits at: i put: ((source bits at: i) bitAnd: 4278190080)].
	^ form