class GroupPracticePage

    def url
      ""
    end
	
	def practice
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_PRAC_NBR')
    end
	
	def provider_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_PROVCAT')
    end
	
	def npi
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_NPI')
    end
	
	def eft
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtEFT_PAYEE_BANK_EFT')
    end
	
	def name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_NAME_X')
    end
	
	def country
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_COUNTRY')
    end
	
	def address_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ADDRESS1')
    end
	
	def address_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ADDRESS2')
    end
	
	def city
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_CITY')
    end
	
	def st
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_STATE')
    end
	
	def zip
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_ZIP')
    end
	
	def county_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_COUNTY')
    end
	
	def county_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCOUNTY_NAME')
    end
	
	def phn_info_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_PHONE1INFO')
    end
	
	def phn_info_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHNLBL1')
    end
	
	def phn_info_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHONE')
    end
	
	def irs_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_IRS_NBR')
    end
	
	def area_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_AREA')
    end
	
	def area_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_MSG')
    end
	
	def area_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_RESPONSE')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_YMDTRANS')
    end
	
	def op_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtGROUP_PRACTICE_M_OP_NBR')
    end
	
	def error_message
	  $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
	end
	
end