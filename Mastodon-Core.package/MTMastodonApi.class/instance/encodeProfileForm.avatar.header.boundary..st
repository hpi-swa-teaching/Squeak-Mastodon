helpers
encodeProfileForm: aDictionary avatar: avatarForm header: headerForm boundary: boundary

	^ String streamContents: [:stream |
		aDictionary keysAndValuesDo: [:key :value |
			stream
				nextPutAll: '--'; nextPutAll: boundary;
				crlf;
				nextPutAll: 'Content-Disposition: form-data; ';
				nextPutAll: 'name="', key, '"';
				crlf;
				crlf;
				nextPutAll: value asString;
				crlf].
		avatarForm ifNotNil: [
			stream
				nextPutAll: '--'; nextPutAll: boundary;
				crlf;
				nextPutAll: 'Content-Disposition: form-data; ';
				nextPutAll: 'name="avatar"; ';
				nextPutAll: 'filename="avatar.png"';
				crlf;
				crlf;
				nextPutAll: (self encodeForm: avatarForm) content asString;
				crlf].
		headerForm ifNotNil: [
			stream
				nextPutAll: '--'; nextPutAll: boundary;
				crlf;
				nextPutAll: 'Content-Disposition: form-data; ';
				nextPutAll: 'name="header"; ';
				nextPutAll: 'filename="header.png"';
				crlf;
				crlf;
				nextPutAll: (self encodeForm: headerForm) content asString;
				crlf].
		stream nextPutAll: '--'; nextPutAll: boundary; nextPutAll: '--']
