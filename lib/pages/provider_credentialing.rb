class ProviderCredentialingPage

    def url
      ""
    end
	
	def error_message
	  $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
	end
	
	
	def id_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtWK_ENTITY1_TYPE')
    end
	
	def id_type_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtENTITY_LABEL')
    end
	
	def id_type_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtWK_ENTITY1_NBR')
    end
	
	def por
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPOR_FLAG')
    end
	
	def provider_type_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_PROVCAT')
    end
	
	def provider_type_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_NAME')
    end
	
	def group_practice
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_LEGAL_NAME')
    end
	
	def speciality_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC1')
    end
	
	def speciality_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC2')
    end
	
	def speciality_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC3')
    end
	
	def speciality_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC4')
    end
	
	def speciality_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC5')
    end
	
	def speciality_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_SPEC6')
    end
	
	def application_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDAPPLIC')
    end
	
	def irs_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_IRS_NBR')
    end
	
	def credential_stat_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_CREDSTAT')
    end
	
	def credential_stat_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDEFF_CREDSTAT')
    end
	
	def credential_stat_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDEND_CREDSTAT')
    end
	
	def re_credentialing
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDRECRED')
    end
	
	def in_process_stat_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_CREDPROC')
    end
	
	def in_process_stat_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDEFF_CREDPROC')
    end
	
	def in_process_stat_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDEND_CREDPROC')
    end
	
	def next_review
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDREVIEW')
    end
	
	def malp_ins
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMALP_CARRIER')
    end
	
	def malp_ins_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMALP_YMDEND')
    end
	
	def liab_ins
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtLIAB_CARRIER')
    end
	
	def liab_ins_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtLIAB_YMDEND')
    end
	
	def monitor
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMONITOR_ORG')
    end
	
	def monitor_veri
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMONITOR_VERIFY')
    end
	
	def dea_cds
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtRX_DESC')
    end
	
	def dea_cds_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtRX_YMDEND')
    end
	
	def site_review
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSITE_SCORE')
    end
	
	def site_review_veri
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSITE_YMDVERIFY')
    end
	
	def license
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtST_STATE')
    end
	
	def license_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtST_YMDEND')
    end
	
	def sanction
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEDI_SANCTION')
    end
	
	def sanction_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEDI_YMDEND')
    end
	
	def school
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCHOOL_ET')
    end
	
	def school_veri
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCHOOL_YMDVERIFY')
    end
	
	def hospital
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHOSP_PRIVILEGE')
    end
	
	def hospital_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHOSP_YMDEND')
    end
	
	def sanction
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEDI_SANCTION')
    end
	
	def brd
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtMEDI_YMDEND')
    end
	
	def brd_end
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCERT_SPEC1')
    end
	
	def malp_claim
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLM_ACTION')
    end
	
	def malp_claim_veri
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLM_YMDVERIFY')
    end
	
	def pers_info
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPERS_INFO_MESSAGE')
    end
	
	def continue_ed
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCONT_ED_FLAG')
    end
	
	def at_codes_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_1')
    end
	
	def at_codes_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_2')
    end
	
	def at_codes_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_3')
    end
	
	def at_codes_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_4')
    end
	
	def at_codes_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_5')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_YMDTRANS')
    end
	
	def op_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_OP_NBR')
    end
	
end