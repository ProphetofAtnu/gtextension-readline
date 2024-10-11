Class {
	#name : #GTECoderAddons,
	#superclass : #GtCoderAddOns,
	#category : #'GTExtensions-Coder-Readline-Keymaps'
}

{ #category : #'as yet unclassified' }
GTECoderAddons >> initialize [
	super initialize.

	self
		addShortcuts: {BrEditorShortcut moveCursorUp
					combination: BlKeyCombination builder control p build.
				BrEditorShortcut moveCursorDown
					combination: BlKeyCombination builder control n build.
				BrEditorShortcut moveCursorRight
					combination: BlKeyCombination builder control f build.
				BrEditorShortcut moveCursorLeft
					combination: BlKeyCombination builder control b build.
				BrEditorShortcut moveCursorToLineStart
					combination: BlKeyCombination builder control a build.
				BrEditorShortcut moveCursorToLineEnd
					combination: BlKeyCombination builder control e build.
				BrEditorShortcut deleteOneLetterAfterCursor
					combination: BlKeyCombination builder alt d build.
				BrEditorShortcut moveCursorToNextWord
					combination: BlKeyCombination builder alt f build.
				BrEditorShortcut moveCursorToPreviousWord
					combination: BlKeyCombination builder alt b build.
				BrEditorShortcut selectAll
					combination: BlKeyCombination builder control shift a build}
]
