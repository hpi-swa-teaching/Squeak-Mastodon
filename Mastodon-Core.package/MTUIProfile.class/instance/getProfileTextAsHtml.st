render
getProfileTextAsHtml

	^ String streamContents: [:stream |
		stream
			nextPutAll: '<b><font size="20">';
			nextPutAll: self account displayName;
			nextPutAll: '</font></b><br>';
			nextPutAll: '<font color="#cccccc">@';
			nextPutAll: self account federatedUsername;
			nextPutAll: '</font><br><br>';
			nextPutAll: self account note;
			nextPutAll: '<br><br><b>';
			nextPutAll: self account statusesCount asString;
			nextPutAll: '</b> Toots - <b>';
			nextPutAll: self account followingCount asString;
			nextPutAll: '</b> Following - <b>';
			nextPutAll: self account followersCount asString;
			nextPutAll: '</b> Followers']