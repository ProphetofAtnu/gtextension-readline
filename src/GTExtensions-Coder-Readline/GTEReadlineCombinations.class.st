Class {
	#name : #GTEReadlineCombinations,
	#superclass : #Object,
	#category : #'GTExtensions-Coder-Readline'
}

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlineBeginningOfLine [
	^ BlKeyCombination builder control a build
]

{ #category : #'as yet unclassified' }
GTEReadlineCombinations class >> readlineDeleteCharAfter [
	^ BlKeyCombination builder control d build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlineEndOfLine [
	^ BlKeyCombination builder control e build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlineForwardChar [
	^ BlKeyCombination builder control f build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlineForwardLine [
	^ BlKeyCombination builder control n build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlineForwardWord [
	^ BlKeyCombination builder alt f build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlinePreviousChar [
	^ BlKeyCombination builder control b build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlinePreviousLine [
	^ BlKeyCombination builder control p build
]

{ #category : #shortcuts }
GTEReadlineCombinations class >> readlinePreviousWord [
	^ BlKeyCombination builder alt b build
]
