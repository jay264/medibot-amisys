class InpatientDataConsolidationPage
	
	def phone_number_3
	  "address_maintenance/phone_number_3.PNG"
	end
	
	def post_to_census
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCENSUS_POST')
    end
	
	def late
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtLATE_FLAG')
    end
	
	def census_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCENSUS_DATE')
    end
	
	def member_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_MEMBER_NBR')
    end
	
	def mrn
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_RECORD_NBR')
    end
	
	def auth_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTHORIZATION_NBR')
    end
	
	def seg_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBBU')
    end
	
	def seg_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBPROG')
    end
	
	def seg_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBCARRIER')
    end
	
	def admit_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDADMIT')
    end
	
	def admit_time
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_AUTH_TIMEADMIT')
    end
	
	def auth_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_TYPE')
    end
	
	def prov_status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_STATUS')
    end
	
	def member_name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBERNAME')
    end
	
	def sex
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBER_SEX')
    end
	
	def dob
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBER_YMDBIRTH')
    end
	
	def member_div
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCONTDIVNO')
    end
	
	def phone_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE3LABEL')
    end
	
	def phone_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE3')
    end
	
	def auth_by
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_BY')
    end
	
	def member_pcp_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEMBPROVAFF_NBR')
    end
	
	def prov
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPNAME2')
    end
	
	def admit_facility
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_AFF_NBR')
    end
	
	def spec
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPNAME3')
    end
	
	def city
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCITY')
    end
	
	def state
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSTATE')
    end
	
	def facility_phone_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE2LABEL')
    end
	
	def facility_phone_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE2')
    end
	
	def sp
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSPECIALTY')
    end
	
	def admit_doctor
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROV_ADMIT')
    end
	
	def admit_doctor_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPNAME4')
    end
	
	def doctor_phone_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE4LABEL')
    end
	
	def doctor_phone_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtX_PHONE4')
    end
	
	def attending_prov
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROV_ATTEND')
    end
	
	def admit_diag_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_DIAG_NBR')
    end
	
	def admit_diag_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DIAG2_NBR')
    end
	
	def admit_diag_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DIAG3_NBR')
    end
	
	def admit_diag_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DIAG4_NBR')
    end
	
	def admit_diag_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DIAG5_NBR')
    end
	
	def admit_diag_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DIAG6_NBR')
    end
	
	def admit_codes_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_ADMIT')
    end
	
	def admit_codes_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_ADMIT2')
    end
	
	def admit_codes_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_ADMIT3')
    end
	
	def admit_cmts
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_ADMIT_NOTE')
    end
	
	def alos
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DAYS_AUTH')
    end
	
	def procedures_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_PROC_NBR')
    end
	
	def procedures_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC2_NBR')
    end
	
	def procedures_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC3_NBR')
    end
	
	def procedures_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC4_NBR')
    end
	
	def procedures_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC5_NBR')
    end
	
	def procedures_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC6_NBR')
    end
	
	def disch_diag_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG')
    end
	
	def disch_diag_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG2')
    end
	
	def disch_diag_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG3')
    end
	
	def disch_diag_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG4')
    end
	
	def disch_diag_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG5')
    end
	
	def disch_diag_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_DIAG6')
    end
	
	def disch_codes_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE')
    end
	
	def disch_codes_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE2')
    end
	
	def disch_codes_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE3')
    end
	
	def disch_cmts
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DISCHARGE_NOTE')
    end
	
	def est_disch
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDDISCHARGE_EST')
    end
	
	def discharge_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDDISCHARGE')
    end
	
	def los
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DAYS_ACTUAL')
    end
	
	def in_icu
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_DAYS_ICU')
    end
	
	def ext_of_care
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AS_CODE')
    end
	
	def discharge_provider_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROV_DISCHARGE')
    end
	
	def discharge_provider_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPNAME5')
    end
	
	def oa_info_referring_doctor
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_REF_AFF_NBR')
    end
	
	def reported_by
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_SOURCE')
    end
	
	def name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPNAME1')
    end
	
	def status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_STATUS')
    end
	
	def ex_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_EXPLAIN')
    end
	
	def ex_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_EX_KEYWORD')
    end
	
	def comments
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCOMMENT_LINE')
    end
	
	def template_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtTEMPLATE_NBR__IN')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDTRANS')
    end
	
	def op_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_OP_NBR')
    end

end