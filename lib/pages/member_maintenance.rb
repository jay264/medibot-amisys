class MemberMaintenancePage

    def url
      ""
    end
	
	def member_number_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtMEMBER_NBR__1')
	end
	
	def member_number_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtMEMBER_NBR__2')
	end
	
	def member_number_3
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtERROR_FIELD_1')
	end
	
	def on_review
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtMOR_FLAG')
	end
	
	def locked_by
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtLOCK_REASON')
	end
	
	def cond_applicant
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtCOND_APPLICANT')
	end
	
	def custodial_parent
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtCUST_PARENT')
	end
	
	def resp_person
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtRESP_PERSON')
	end
	
	def protected_mbr
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtPROTECT_MEM')
	end
	
	def prefix
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_NAME_PREFIX')
	end
	
	def first_name
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_NAME_FIRST')
	end
	
	def middle_name
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_NAME_MIDDLE')
	end
	
	def last_name
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_NAME_LAST')
	end
	
	def suffix
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_NAME_SUFFIX')
	end
	
	def alt_key_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtALTKEY_LABEL')
	end
	
	def alt_key_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtALTKEY2_LABEL')
	end
	
	def alt_key_3
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtPREV_CONTRACT_NBR_LABEL')
	end
	
	def alt_key_4
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_ALT_KEY')
	end
	
	def alt_key_5
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_ALT_KEY2')
	end
	
	def alt_key_6
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtPREV_CONTRACT_NBR')
	end
	
	def prior_last_name
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400K_LASTNAME_P')
	end
	
	def ssn
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_SSN')
	end
	
	def hcfa_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_HCFA_NBR')
	end
	
	def record_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_RECORD_NBR')
	end
	
	def altcov_ver
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDVERIFY')
	end
	
	def altcov_resp
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LR_RESPONSE')
	end
	
	def sex
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_SEX')
	end
	
	def birth
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDBIRTH')
	end
	
	def birth_seq_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_BIRTH_SEQ')
	end
	
	def death
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDDEATH')
	end
	
	def card
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDCARD')
	end
	
	def cr
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_CARD')
	end
	
	def aa
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_AREA')
	end
	
	def confidential
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_CONFIDENTIAL')
	end
	
	def race_ethnicity_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_RACE_ETHNICITY')
	end
	
	def race_ethnicity_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_RACE_ETHNIC_SRC')
	end
	
	def spoken_language_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANGUAGE_X')
	end
	
	def spoken_language_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANG_SPOKEN_SRC')
	end
	
	def written_language_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANG_WRITTEN')
	end
	
	def written_language_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANG_WRITTEN_SRC')
	end
	
	def other_language_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANG_OTHER')
	end
	
	def other_language_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_LANG_OTHER_SRC')
	end
	
	def interpreter_reqd
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_INTERPRETER_REQ')
	end
	
	def unique_id
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_PERSON_NBR')
	end
	
	def assigned
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDPREX')
	end
	
	def pre_ex_con
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDPREXEND')
	end
	
	def tc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_TRANSCODE')
	end
	
	def date
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_YMDTRANS')
	end
	
	def op_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_OP_NBR')
	end
	
	def eff_date_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDEFF')
	end
	
	def end_date_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDEND')
	end
	
	def division_number_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_DIVISION_NBR')
	end
	
	def ry_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_REASON')
	end
	
	def bu_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_REASON')
	end
	
	def pg_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_PROG_NBR')
	end
	
	def ca_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CARRIER')
	end
	
	def rg_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_REGION')
	end
	
	def gc_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_GROUP_CAT')
	end
	
	def bp_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_BENEFIT_PKG')
	end
	
	def cy_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CONTRACTYPE')
	end
	
	def cl_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CLASS_X')
	end
	
	def ms_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_STATUS_X')
	end
	
	def ns_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_INSURANCE')
	end
	
	def rp_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_RISKPOP')
	end
	
	def hs_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_HEALTHSTAT')
	end
	
	def ps_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_PRIME_SECOND')
	end
	
	def c9_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CITIZENSHIP')
	end
	
	def tu_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtTOBACCO_USE')
	end
	
	def error_field_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtERROR_FIELD_2')
	end
	
	def eff_date_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_YMDEFF')
	end
	
	def end_date_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_YMDEND')
	end
	
	def division_number_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_DIVISION_NBR')
	end
	
	def ry_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_REASON')
	end
	
	def bu_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_BUSINESS_UNIT')
	end
	
	def pg_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_PROG_NBR')
	end
	
	def ca_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_CARRIER')
	end
	
	def rg_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_REGION')
	end
	
	def gc_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_GROUP_CAT')
	end
	
	def bp_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_BENEFIT_PKG')
	end
	
	def cy_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_CONTRACTYPE')
	end
	
	def cl_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_CLASS')
	end
	
	def ms_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_STATUS')
	end
	
	def ns_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_INSURANCE')
	end
	
	def rp_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_RISKPOP')
	end
	
	def hs_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_HEALTHSTAT')
	end
	
	def ps_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_PRIME_SECOND')
	end
	
	def c9_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_CITIZENSHIP')
	end
	
	def tu_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_TOBACCO_USE')
	end
	
	def be_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_BENEFIT_STATUS')
	end
	
	def me_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_MEDICARE_PLAN')
	end
	
	def my_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_MEDICARE_ELIG_RY')
	end
	
	def cvg_mo_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_PRIOR_CVG_MONTHS')
	end
	
	def pre_exist_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_PRE_EXIST')
	end
	
	def eff_date_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDPREX')
	end
	
	def end_date_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDPREXEND')
	end
	
	def provider_number_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_AFF_NBR')
	end
	
	def ht
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_HAT_CODE')
	end
	
	def cp
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CLAIM_TYPE')
	end
	
	def aa
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_AFF_AREA')
	end
	
	def cx
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CAP_CYCLE')
	end
	
	def cx
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CAP_CYCLE')
	end
	
	def type
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CAPTYPE')
	end
	
	def ryc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_CAP_CODE')
	end
	
	def fl_cap_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDFIRSTCAP')
	end
	
	def fl_cap_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDLASTCAP')
	end
	
	def be_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_BENEFIT_STATUS')
	end
	
	def me_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_MEDICARE_PLAN')
	end
	
	def my_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_MEDICARE_ELIG_RY')
	end
	
	def cvg_mo_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_PRIOR_CVG_MONTHS')
	end
	
	def pre_exist_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_PRE_EXIST')
	end
	
	def eff_date_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_YMDPREX')
	end
	
	def end_date_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_YMDPREXEND')
	end
	
	def provider_number_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_AFF_NBR')
	end
	
	def at_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400C_ACTION_TRIGGER')
	end
	
	def at_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtMISC_LABEL')
	end
	
	def at_3
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400K_MISC_INFO')
	end
	
	def at_4
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtTEMP_FIELD')
	end
	
	def at_5
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtRESP_NAME_CHG')
	end
	
	def at_6
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtADD_RESPONSE')
	end
	
	def individual_premium_amt_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_AMT_IND_PREM')
	end
	
	def individual_premium_amt_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtT3_AMT_IND_PREM')
	end
	
	def ryb
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_BILLING_CODE')
	end
	
	def fl_bill_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDFIRSTBILL')
	end
	
	def fl_bill_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDLASTBILL')
	end
	
	def tc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_TRANSCODE')
	end
	
	def date
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_YMDTRANS')
	end
	
	def op_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').input(:id => 'txtBCS2400D_OP_NBR')
	end
	
	def sex_image
	  "member_maintenance/sex_image.PNG"
	end
	
	def birth_image
	  "member_maintenance/birth_image.PNG"
	end
	
	def birth_seq_image
	  "member_maintenance/birth_seq_image.PNG"
	end
	
	def ry_image
	  "member_maintenance/ry_image.PNG"
	end
	
	def cl_image
	  "member_maintenance/cl_image.PNG"
	end
	
	def provider_number_image
	  "member_maintenance/provider_number_image.PNG"
	end
	
	def eff_date_image
	  "member_maintenance/eff_date_image.PNG"
	end
	
	def end_date_image
	  "member_maintenance/end_date_image.PNG"
	end
	
end