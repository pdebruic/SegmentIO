as yet unclassified
eventNamed: aName forUser: aSegmentIOUser withProperties: aPropertyDictionary
	^ self new
		eventName: aName;
		user: aSegmentIOUser;
		properties: aPropertyDictionary;
		yourself