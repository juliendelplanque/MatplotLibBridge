Extension { #name : #String }

{ #category : #'*MatplotLibBridge' }
String >> asMLBArrowStyle [
	^ MLBArrowStyle styleString: self
]

{ #category : #'*MatplotLibBridge' }
String >> asMLBLineStyle [
	^ MLBLineStyle styleString: self
]

{ #category : #'*MatplotLibBridge' }
String >> asMLBMarkerStyle [
	^ MLBMarkerStyle styleString: self
]

{ #category : #'*MatplotLibBridge' }
String >> asMLBScaleStyle [
	^ MLBScaleStyle styleString: self
]
