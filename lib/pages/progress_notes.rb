class ProgressNotesPage

	def completed_remark_summary
	  "progress_notes/completed_remark_summary.PNG"
	end

	def append
	  "progress_notes/append.PNG"
	end

	def process_completed
	  "progress_notes/process_completed.PNG"
	end

	def progress_note_text_field
	  $browser.frame(:name => 'Form').textarea(:id => 'txtNOTES')
	end

	def progress_note_text_field_selected
	  "progress_notes/progress_note_text_field_selected.PNG"
	end

	def progress_note_text_field_unselected
	  "progress_notes/progress_note_text_field_unselected.PNG"
	end

	def text_field_blank
	  "progress_notes/text_field_blank.PNG"
	end

	def text_field_selected
	  "progress_notes/text_field_selected.PNG"
	end

end
