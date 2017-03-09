class RemarksMaintenancePage

	def id_number_type
	  	$browser.frame(:name => 'Form').text_field(:id => 'txtREMARK_SUMMARY_TYPE_X')
	end

	def sub_type
	  	$browser.frame(:name => 'Form').text_field(:id => 'txtT_RMKCAT')
	end

	def remark_type
	  	$browser.frame(:name => 'Form').text_field(:id => 'txtREMARK_SUMMARY_RMKTYPE')
	end

	def remark_summary
	  	$browser.frame(:name => 'Form').text_field(:id => 'txtREMARK_SUMMARY_REMARK')
	end

	def remark_text
	  	$browser.frame(:name => 'Form').text_field(:id => 'txtEXT_REMARK_REMARK___1')
	end

	def append
			$browser.frame(:name => 'Form').link(:text => 'Append')
	end

end
