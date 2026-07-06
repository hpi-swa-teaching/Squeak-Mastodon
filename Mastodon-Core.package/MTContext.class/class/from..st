initialization
from: aJson

	^ self new
		descendants: ((aJson at: 'descendants') collect: [:each | MTToot from: each]);
		ancestors: ((aJson at: 'ancestors') collect: [:each | MTToot from: each]);
		yourself