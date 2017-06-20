accessing
encodeMultipartForm: form boundary: boundary

	^ String streamContents: [:stream |
		stream
			" file field "
			nextPutAll: '--'; nextPutAll: boundary;
			crlf;
			nextPutAll: 'Content-Disposition: form-data; ';
			nextPutAll: 'name="file"; ';
			nextPutAll: 'filename="file.png"';
			crlf;
			crlf;
			nextPutAll: form content asString;
			crlf;
			nextPutAll: '--'; nextPutAll: boundary; nextPutAll: '--'].