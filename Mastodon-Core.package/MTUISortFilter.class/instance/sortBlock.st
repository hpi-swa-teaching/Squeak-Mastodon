sorting
sortBlock

	| block reverseSortDirection |
	reverseSortDirection := self sortDirection = #descending.
	self sortKey = #chronological ifTrue: [block := [:toot | toot createdAt]].
	self sortKey = #favourites ifTrue: [block := [:toot | toot favouritesCount]].
	self sortKey = #reblogs ifTrue: [block := [:toot | toot reblogsCount]].
	self sortKey = #replies ifTrue: [block := [:toot | toot repliesCount]].
	
	block ifNil: [^ nil].
	^ [:first :second | "Special case equality such that our sort is stable"
	(block value: first) = (block value: second) or: ((block value: first) < (block value: second) xor: reverseSortDirection)]