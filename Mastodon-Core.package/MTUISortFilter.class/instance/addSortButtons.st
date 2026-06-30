render
addSortButtons

	| row |
	row := MTUIView new.
	row
		listDirection: #leftToRight;
		cellInset: 8.
	self addMorphBack: row.
	{
		self createSortKeyButton: 'Chronological' isChecked: true.
		self createSortKeyButton: 'Favourites' isChecked: false.
		self createSortKeyButton: 'Reblogs' isChecked: false.
		self createSortKeyButton: 'Replies' isChecked: false} do: [:button | row addMorphBack: button]