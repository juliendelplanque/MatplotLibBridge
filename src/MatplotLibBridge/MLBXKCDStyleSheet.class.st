Class {
	#name : #MLBXKCDStyleSheet,
	#superclass : #MLBStyleSheet,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBXKCDStyleSheet >> acceptVisitor: visitor [
	^ visitor visitMLBXKCDStyleSheet: self
]
