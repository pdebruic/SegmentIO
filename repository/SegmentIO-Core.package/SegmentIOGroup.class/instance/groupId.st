accessing
groupId
	^ groupId ifNil: [ groupId := SegmentIOSystem randomId ]