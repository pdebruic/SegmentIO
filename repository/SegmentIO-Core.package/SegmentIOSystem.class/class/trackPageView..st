http-actions
trackPageView: aSegmentIOPage
	| data |
	data := aSegmentIOPage jsonData.
	self addLibraryInfoTo: data.
	self isBatchingRequests
		ifTrue: [ 
			data at: 'action' put: 'page'.
			self enqueue: data ]
		ifFalse: [ 
			| response |
			response := self httpClient post: self pageUrl json: data asJsonString.
			^ self handleResponse: response ]