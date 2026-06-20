render
addScheduleArea

	| container |
	container := (MTUIExpandableMenu basicNew title: 'Schedule it') initialize.
	self addDatePicker: container.
	self addScheduleButton: container.
	
	self addMorphBack: container