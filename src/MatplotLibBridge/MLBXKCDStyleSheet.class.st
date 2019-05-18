"
I am pre-defined style-sheet showing your plot in XKDC style.
"
Class {
	#name : #MLBXKCDStyleSheet,
	#superclass : #MLBStyleSheet,
	#category : #'MatplotLibBridge-Model'
}

{ #category : #visiting }
MLBXKCDStyleSheet >> acceptVisitor: visitor [
	^ visitor visitMLBXKCDStyleSheet: self
]
