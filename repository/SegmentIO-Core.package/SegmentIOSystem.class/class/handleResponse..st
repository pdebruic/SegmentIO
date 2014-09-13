http-actions
handleResponse: response
	| json |
	json := Json readFrom: response readStream.
	((json at: 'code') = 'invalid_request_error')
		ifTrue: [ SegmentIOError signal: (json at: 'message') ].
	^ json