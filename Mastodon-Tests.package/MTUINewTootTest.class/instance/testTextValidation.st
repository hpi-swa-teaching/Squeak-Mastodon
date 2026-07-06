tests
testTextValidation

	| widget s |
	widget := MTUINewToot new.
	s := ''.
	1 to: 500 do: [:i | s := s, 'a'].
	widget tootTextArea contents: s.
	self assert: widget validateTootText isSuccess.
	widget tootTextArea contents: s, 'a'.
	self assert: widget validateTootText isError