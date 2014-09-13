as yet unclassified
testTrackEvent
	| event |
	event := (SegmentIOEvent named: 'event')
		user: user;
		yourself.
	self
		assert:
			('{"timestamp":"*","event":"event","userId":"a1b2c3d4e5"}'
				match: event jsonData asJsonString)