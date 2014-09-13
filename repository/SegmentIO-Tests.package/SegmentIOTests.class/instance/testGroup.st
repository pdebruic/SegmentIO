as yet unclassified
testGroup
	| group |
	group := SegmentIOGroup name: 'q'.
	self
		assert:
			('{"timestamp":"*","groupId":"5ydpogSMEj","userId":"a1b2c3d4e5","traits":{"name":"q"}}'
				match: (group jsonDataFor: user) asJsonString)