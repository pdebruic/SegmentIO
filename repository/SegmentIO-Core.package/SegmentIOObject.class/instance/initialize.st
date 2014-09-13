initialize-release
initialize
	super initialize.
	SegmentIOSystem isBatchingRequests
		ifTrue: [ timeStamp := DateAndTime now ]