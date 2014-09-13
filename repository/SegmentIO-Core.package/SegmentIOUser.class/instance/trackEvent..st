events
trackEvent: aSegmentIOEvent
	^ SegmentIOSystem
		trackEvent:
			(aSegmentIOEvent
				user: self;
				yourself)