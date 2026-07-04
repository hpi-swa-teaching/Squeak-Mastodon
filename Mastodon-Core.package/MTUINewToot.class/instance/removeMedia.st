actions
removeMedia

	self media removeAll.
	
	self
		updateMediaPreview;
		updateClearImagesButton;
		updateSelectImageButton;
		updateTootButton