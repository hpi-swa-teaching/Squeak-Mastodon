render
addSortDirectionButtons

	| row |
	row := MTUIView new.
	row
		listDirection: #leftToRight;
		cellInset: 8.
	self addMorphBack: row.
	{
		self createSortDirectionButton: 'Ascending' isChecked: false.
		self createSortDirectionButton: 'Descending' isChecked: true} do: [:button | row addMorphBack: button]