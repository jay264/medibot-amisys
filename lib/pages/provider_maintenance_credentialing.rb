class ProviderMaintenanceCredentialingPage

    def url
      ""
    end
	
	def error_message
	  $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
	end
	
	def prov_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_PROV_NBR')
    end
	
	def provider_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_PROVCAT')
    end
	
	def npi
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_NPI')
    end
	
	def por
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPOR_FLAG')
    end
	
	def alternate_id_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_CONTROL_NBR')
    end
	
	def first_name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_FIRSTNAME')
    end
	
	def last_name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LASTNAME')
    end
	
	def inst
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_INSTNAME')
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
	
	def country
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_COUNTRY')
    end
	
	def county
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCOUNTY_NAME')
    end
	
	def pi_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADDRESS_PHONE1INFO')
    end
	
	def pi_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHNLBL1')
    end
	
	def pi_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHONE')
    end
	
	def birth_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_YMDBIRTH')
    end
	
	def sex
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SEX')
    end
	
	def sex_select
      $browser.frame(:name => 'Main').frame(:name => 'Form').select(:id => 'ListItems')
    end
	
	def title
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_TITLE')
    end
	
	def degree
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_DEGREE')
    end
	
	def began_prac
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_YRBEGIN')
    end
	
	def misc_info
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_MISC_INFO')
    end
	
	def ethnic_origin
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_ETHNIC')
    end
	
	def theo_orient
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_THEORY')
    end
	
	def usps_country
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtZIP_M_USPS_COUNTY')
    end
	
	def usps_county
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCOUNTY_NAME')
    end
	
	def irs_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_IRS_IRS_NBR')
    end
	
	def old_prov_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_PROV_NBR_OLD')
    end
	
	def office_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtOFFICE_NBR1')
    end
	
	def office_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtOFFICE_NBR2')
    end
	
	def office_number_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtOFFICE_NBR3')
    end
	
	def office_number_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtOFFICE_NBR4')
    end
	
	def office_number_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtOFFICE_NBR5')
    end
	
	def screen_form
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SCREEN_FORMAT')
    end
	
	def language_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG01')
    end
	
	def language_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG02')
    end
	
	def language_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG03')
    end
	
	def language_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG04')
    end
	
	def language_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG05')
    end
	
	def language_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG06')
    end
	
	def language_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG07')
    end
	
	def language_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG08')
    end
	
	def language_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG09')
    end
	
	def language_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_LANG10')
    end
	
	def spec_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC1')
    end
	
	def spec_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE1')
    end
	
	def spec_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC2')
    end
	
	def spec_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE2')
    end
	
	def spec_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC3')
    end
	
	def spec_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE3')
    end
	
	def spec_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC4')
    end
	
	def spec_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE4')
    end
	
	def spec_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC5')
    end
	
	def spec_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE5')
    end
	
	def spec_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SPEC6')
    end
	
	def spec_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_SU_CODE6')
    end
	
	def message
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_MSG')
    end
	
	def response
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_RESPONSE')
    end
	
	def blank
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_BLANK_FIELD')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_YMDTRANS')
    end
	
	def op_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_OP_NBR')
    end	
	
	def prov_info
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '2INFO')
	end
	
end