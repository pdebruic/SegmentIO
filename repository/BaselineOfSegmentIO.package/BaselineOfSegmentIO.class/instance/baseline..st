baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'HTTPAPIClient' with: [
				spec repository: 'filetree:///opt/git/tcs1/HTTPAPIClient'; loads: #('Core' ) ];
			baseline: 'JSON' with: [
				spec repository: 'filetree:///opt/git/tcs1/JSON' ].
		spec 
			package: 'SegmentIO-Core' with: [
				spec requires: #('HTTPAPIClient' 'JSON' ). ];
			package: 'SegmentIO-Tests' with: [
				spec requires: #('SegmentIO-Core' ). ].
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #('SegmentIO-Core' );
			group: 'Tests' with: #('SegmentIO-Tests' ). ].
