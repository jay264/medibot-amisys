class ProviderAffiliationPage

    def url
      ""
    end
	
	def id_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSRCH_PROV')
    end
	
	def id_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSRCH_AFFIL')
    end
	
	def name
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVNAME')
    end
	
	def title
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_TITLE')
    end
	
	def degr
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROVIDER_DEGREE')
    end
	
	def on_review
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPOR_FLAG')
    end
	
	def eff_date_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_YMDEFF')
    end
	
	def eff_date_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_YMDEND')
    end
	
	def busn_unit
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_BUSINESS_UNIT')
    end
	
	def program_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PROG_NBR')
    end
	
	def carrier_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CARRIER')
    end
	
	def region
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_REGION')
    end
	
	def sub_prog_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_SUB_PROG_NBR')
    end
	
	def eft
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtEFT_PAYEE_BANK_EFT')
    end
	
	def office_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_OFFICE_NBR')
    end
	
	def practice_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PRAC_NBR')
    end
	
	def cap_status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CF_CODE')
    end
	
	def hat_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_HAT_CODE')
    end
	
	def claim_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CLAIM_TYPE')
    end
	
	def cred_stat_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCREDENTIAL_CREDSTAT')
    end
	
	def cred_stat_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCUR_SPAN_DESC')
    end
	
	def payto
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PAYTO')
    end
	
	def type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PROVCAT')
    end
	
	def class
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CLASS_X')
    end
	
	def status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_STATUS_X')
    end
	
	def spec
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_SPEC1')
    end
	
	def county
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_COUNTY')
    end
	
	def area
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_AREA')
    end
	
	def accept
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_ACCEPT')
    end
	
	def los_region
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_LOS_REG')
    end
	
	def pay_disc
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PAY_DISCOUNT')
    end
	
	def ptnt_load
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PATIENT_LOAD')
    end
	
	def number_active
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_ACTIVE_PATIENTS')
    end
	
	def override_key
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_TBL_OVRD')
    end
	
	def excpt_fee
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_EXCEPTION_FEE')
    end
	
	def pay_class
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PAY_CLASS')
    end
	
	def scale_class
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_SCALE_CLASS')
    end
	
	def fund_class
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_FUND_CLASS')
    end
	
	def lag
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_LAG')
    end
	
	def cap_method
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_METHOD_X')
    end
	
	def cap_key
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CAPKEY')
    end
	
	def cap_cycle
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CYCLE')
    end
	
	def cap_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_CAPTYPE')
    end
	
	def pool_class
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_POOL_CLASS')
    end
	
	def period_table_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_PERIOD_TABLE_NBR')
    end
	
	def remit_eop
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_REMIT_EOP')
    end
	
	def remit_eop_tpid_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_TPID_TRANSTYPE')
    end
	
	def remit_eop_tpid_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtTEMP_TPID_TRANSTYPE')
    end
	
	def fee_zip
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_ZIP_HIAA')
    end
	
	def npi
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_NPI')
    end
	
	def irs_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_ALT_QUALIFIER')
    end
	
	def irs_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_IRS_NBR')
    end
	
	def medicare
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_MEDICARE_NBR')
    end
	
	def medicaid
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_MEDICAID_NBR')
    end
	
	def license_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_LICENSE_NBR')
    end
	
	def dea_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_NARC_NBR')
    end
	
	def serv_call
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_YMDVISIT')
    end
	
	def at
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_AT')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_YMDTRANS')
    end
	
	def op_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAFFILIATION_OP_NBR')
    end

	def op_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtXMESSAGE')
    end
	
	def op_number_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtXANSWER')
    end

	def error_message
      $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
    end
	
end