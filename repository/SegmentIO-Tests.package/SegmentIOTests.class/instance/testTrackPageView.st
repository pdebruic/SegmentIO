as yet unclassified
testTrackPageView
	| page |
	page := (SegmentIOPage named: 'page')
		user: user;
		yourself.
	self assert: ('{"timestamp":"*","name":"page","userId":"a1b2c3d4e5"}' match: page jsonData asJsonString)