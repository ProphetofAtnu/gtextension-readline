Class {
	#name : #GTEReadlineShortcuts,
	#superclass : #Object,
	#category : #'GTExtensions-Coder-Readline-Readline Shortcuts'
}

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineBeginningOfLine [
	^ BrEditorShortcut moveCursorToLineStart
		combination: GTEReadlineCombinations readlineBeginningOfLine;
		combinationForMacOS: GTEReadlineCombinations readlineBeginningOfLine
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineDeleteCharAfter [
	^ BrEditorShortcut deleteOneLetterAfterCursor
		combination: GTEReadlineCombinations readlineDeleteCharAfter
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineEndOfLine [
	^ BrEditorShortcut moveCursorToLineEnd
		combination: GTEReadlineCombinations readlineEndOfLine;
		combinationForMacOS: GTEReadlineCombinations readlineEndOfLine
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineForwardChar [
	^ BrEditorShortcut moveCursorRight
		combination: GTEReadlineCombinations readlineForwardChar
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineForwardLine [
	^ BrEditorShortcut moveCursorDown
		combination: GTEReadlineCombinations readlineForwardLine
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlineForwardWord [
	^ BrEditorShortcut moveCursorToNextWord
		combination: GTEReadlineCombinations readlineForwardWord
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlinePreviousChar [
	^ BrEditorShortcut moveCursorLeft
		combination: GTEReadlineCombinations readlinePreviousChar
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlinePreviousLine [
	^ BrEditorShortcut moveCursorUp
		combination: GTEReadlineCombinations readlinePreviousLine
]

{ #category : #shortcuts }
GTEReadlineShortcuts class >> readlinePreviousWord [
	^ BrEditorShortcut moveCursorToPreviousWord
		combination: GTEReadlineCombinations readlinePreviousWord
]
