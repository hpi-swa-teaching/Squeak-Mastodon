initialization
with: anOrderedCollectionOfToots andSortBlock: aSortBlock

	^ self new
		toots: anOrderedCollectionOfToots;
		sortBlock: aSortBlock;
		sortToots
	"sortToots already renders after sorting, so no need to do it here"