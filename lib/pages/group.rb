class GroupPage

    def url
      ""
    end
	
	def group_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_GROUP_NBR')
    end
	
	def ein
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_EIN')
    end
	
	def name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_NAME_X')
    end
	
	def contact
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_CONTACT')
    end
	
	def cd
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_CONTACT_ID')
    end
	
	def marketing_rep
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_MKTREP')
    end
	
	def address
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ADDRESS1')
    end
	
	def address_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ADDRESS2')
    end
	
	def zip
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ZIP')
    end
	
	def country
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_COUNTRY')
    end
	
	def county
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_COUNTY')
    end
	
	def hlth_pln_grp
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_HLTH_PLN_GRP')
    end
	
	def pi
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => '(PI)/')
    end
	
	def phone
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHONE')
    end
	
	def adv_notification
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_RENEWAL_DAYS')
    end
	
	def business_unit
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_BUSINESS_UNIT')
    end
	
	def program_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_PROG_NBR')
    end
	
	def carrier_field
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_CARRIER')
    end
	
	def type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_GROUP_CAT')
    end
	
	def bill_method
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_BILL_METHOD')
    end
	
	def bill_format
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_BILL_FORMAT')
    end
	
	def grp_id
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_M_GROUP_ID')
    end
	
	def eff_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_SPAN_YMDEFF')
    end
	
	def ry_term
      "group/ry_term.PNG"
    end
	
	def ry
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_SPAN_REASON')
    end
	
	def status_message
      $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
    end
	
	def end_date_2
	  "group/end_date_2.PNG"
	end
	
	def eff_date_2
	  "group/eff_date_2.PNG"
	end
	
	def ry_2
	  "group/ry_2.PNG"
	end
	
	def blank_space
	  "group/blank_space.PNG"
	end
	
	def end_date_2_unselected
	  "group/end_date_2_unselected.PNG"
	end
	
end