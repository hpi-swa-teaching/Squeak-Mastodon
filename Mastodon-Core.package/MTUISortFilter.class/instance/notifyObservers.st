event handling
notifyObservers

	self observers do: [:observer | observer onSortFilterChanged: self sortBlock]