morphic
drawButtons
 
	self buttons do: [ :button |
		self addMorphBack: button.
		button render]