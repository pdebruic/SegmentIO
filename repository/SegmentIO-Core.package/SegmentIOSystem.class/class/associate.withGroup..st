http-actions
associate: aSegmentIOUser withGroup: aSegmentIOGroup
	| data |
	data := aSegmentIOGroup jsonDataFor: aSegmentIOUser.
	self addLibraryInfoTo: data.
	self isBatchingRequests
		ifTrue: [ 
			data at: 'action' put: 'group'.
			self enqueue: data ]
		ifFalse: [ 
			| response |
			response := self httpClient post: self groupUrl json: data asJsonString.
			^ self handleResponse: response ]