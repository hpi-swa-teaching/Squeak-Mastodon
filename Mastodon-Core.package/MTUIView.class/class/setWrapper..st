layout-properties
setWrapper: aWrapper
	aWrapper layoutPolicy: TableLayout new;
		 listDirection: #topToBottom;
		 cellPositioning: #topLeft;
		 hResizing: #spaceFill;
		 vResizing: #shrinkWrap;
		 wrapCentering: #left;
		 color: Color white;
		 cellInset: 10;
		 borderWidth: 1;
		layoutInset: 2.
	^ aWrapper