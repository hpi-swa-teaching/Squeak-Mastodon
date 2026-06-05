time-conversion
relativeTimeString: aTimeStamp
	"converts a timestamp into a relative time like '2 hours ago'"

	| now diff units highestAssociation highestUnit count |
	now := TimeStamp now asUTC.
	diff := now - aTimeStamp.
	units := {
		#week -> (diff days // 7).
		#day -> diff days.
		#hour -> diff hours.
		#minute -> diff minutes.
		#second -> diff seconds}.
	diff days abs < 60 ifFalse: [^ aTimeStamp asMonth asString].
	diff asSeconds = 0 ifTrue: [^ 'now'].
	highestAssociation := units detect: [:each | each value ~= 0].
	highestUnit := highestAssociation key.
	count := highestAssociation value.
	highestUnit = #week ifTrue: [
		diff days > 30 ifTrue: [^ 'last month'].
		diff days < -30 ifTrue: [^ 'next month']].
	highestUnit = #day ifTrue: [
		count = 1 ifTrue: [^ 'yesterday'].
		count = -1 ifTrue: [^ 'tomorrow']].
	highestUnit = #second ifTrue: [
		count abs < 60 ifTrue: [
			count > 0 ifTrue: [^ 'just now'].
			count < 0 ifTrue: [^ 'very soon']]].
	
	^ self relativeTimeStringFor: count abs unit: highestUnit isFuture: count < 0