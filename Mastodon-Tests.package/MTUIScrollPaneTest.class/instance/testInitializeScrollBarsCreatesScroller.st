initialization
testInitializeScrollBarsCreatesScroller

    | scrollPane |
    scrollPane := MTUIScrollPane new.

    self assert: scrollPane scroller notNil.
    self assert: scrollPane scroller class equals: TransformMorph.
    self assert: scrollPane scroller color equals: Color transparent.
    self assert: scrollPane scroller hResizing equals: #spaceFill.
    self assert: scrollPane scroller vResizing equals: #spaceFill