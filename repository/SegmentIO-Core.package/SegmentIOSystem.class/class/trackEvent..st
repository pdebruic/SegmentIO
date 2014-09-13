http-actions
trackEvent: aSegmentIOEvent
	| data |
	data := aSegmentIOEvent jsonData.
	self addLibraryInfoTo: data.
	self isBatchingRequests
		ifTrue: [ 
			data at: 'action' put: 'track'.
			self enqueue: data ]
		ifFalse: [ 
			| response |
			response := self httpClient post: self trackUrl json: data asJsonString.
			^ self handleResponse: response ]