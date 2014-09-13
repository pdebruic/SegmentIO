http-actions
addLibraryInfoTo: data
	| options library |
	options := data at: 'context' ifAbsentPut: [ Dictionary new ].
	library := Dictionary new.
	library at: 'name' put: 'Smalltalk'.
	library at: 'version' put: '1'.
	options at: 'library' put: library.
	self debug
		ifTrue: [ 
			options at: 'os_name' put: Smalltalk os platformName.
			options at: 'smalltalk_version' put: Smalltalk version ]