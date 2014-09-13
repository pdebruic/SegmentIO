http-actions
identifyUser: aSegmentIOUser
	| data |
	data := aSegmentIOUser jsonData.
	self addLibraryInfoTo: data.
	self isBatchingRequests
		ifTrue: [ 
			data at: 'action' put: 'identify'.
			self enqueue: data ]
		ifFalse: [ 
			| response |
			response := self httpClient post: self identifyUrl json: data asJsonString.
			^ self handleResponse: response ]