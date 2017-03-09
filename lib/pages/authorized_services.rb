class AuthorizedServicesPage

	def authorized_services_tab
		$browser.frame(:name => 'Form').link(:text => 'AuthoriZed Svcs')
	end

	def template_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtTEMPLATE_NBR__IN')
	end

	def how_many_requested
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_COUNT_REQ')
    #$browser.frame(:name => 'Form').text_field(:css => 'id["txtAUTH_DETAIL_COUNT_REQ"]')
	end

	def amount_requested
	  $browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AMOUNT_EST')
	end

	def dates_begin_requested
	  $browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDEFF_REQ')
	end

	def dates_end_requested
	  $browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDEND_REQ')
	end

	def how_many_authorized
	  $browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_COUNT_AUTH')
	end

	def dates_begin_authorized
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDEFF_AUTH')
	end

	def dates_end_authorized
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDEND_AUTH')
	end

	def count_ct
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AUTH_CTR')
	end

	def ref_prov_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_REF_AFF_NBR')
	end

	def ref_prov_number_link
		$browser.frame(:name => 'Form').link(:text => 'Prov')
	end

	def claim_type_cp
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_CLAIM_TYPE')
	end

	def prov
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AFF_NBR')
	end

	def prov_link
		$browser.frame(:name => 'Form').link(:text => 'Ref Prov#')
	end

	def sp
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_SPEC1')
	end

	def prov_status_ps
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AFF_STATUS')
	end

	def group_prac_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_PRAC_NBR')
	end

	def office_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_OFFICE_NBR')
	end

	def location_lc
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_LOCATION')
	end

	def diag_number_1
		$browser.frame(:name => 'Form').text_field(:id => 'txtT_DIAG_TYPE')
	end

	def diag_number_2
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_DIAG_NBR')
	end

	def treat_type_tt
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_TREATMENT_TYPE')
	end

	def proc_class_pl
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_PROC_CLASS')
	end

	def ml_ts_1
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_ML_1')
	end

	def ml_ts_2
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_1')
	end

	def ml_ts_3
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_2')
	end

	def ml_ts_4
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_3')
	end

	def ml_ts_5
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_4')
	end

	def ml_ts_6
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_5')
	end

	def ml_ts_7
		$browser.frame(:name => 'Form').text_field(:id => 'txtML1_TS1_6')
	end

	def more
		$browser.frame(:name => 'Form').text_field(:id => 'txtMORE_MLTS')
	end

	def proc_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_PROC_NBR')
	end

	def end_procedure
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_PROC2_NBR')
	end

	def m1
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_MODIFIER')
	end

	def m2
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_MODIFIER2')
	end

	def extent_of_care_as
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AS_CODE')
	end

	def auth_type_ar
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AUTH_TYPE')
	end

	def phys_approv
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_APPROVED_BY')
	end

	def phys_approv_date
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDAPPROVAL')
	end

	def transfer_tn
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_TRANSFER')
	end

	def transfer_date
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDTRANSFER')
	end

	def reviewed_by
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_REVIEWED_BY')
	end

	def reviewed_by_date
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDEFF')
	end

	def auth_follow_up_au
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AUTH_REASON')
	end

	def at
		$browser.frame(:name => 'Form').text_field(:id => 'txtT_AT')
	end

	def response
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_TRIGGER_RESP')
	end

	def avoidance_av
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AVOID_REASON')
	end

	def avoidance_days
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_AVOID_DAYS')
	end

	def ex
		$browser.frame(:name => 'Form').text_field(:id => 'txtDSPL_EXPLAIN')
	end

	def coord_number
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_COORD_OP')
	end

	def denial_effective_date
		$browser.frame(:name => 'Form').text_field(:id => 'txtAUTH_DETAIL_YMDDENIALEFF')
	end


end
