accessing
userId
	^ userId ifNil: [ userId := SegmentIOSystem randomId ]