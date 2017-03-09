class CertificationPage

	def request
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => 'Atab2')
    end

	def save
			#$browser.frame(:name => 'Banner').area(:id => 'doapply')
			"certification/save.PNG"
		end

	def new
			$browser.frame(:name => 'Banner').map(:id => 'aatoolbar').area(:id => 'doadd')
		end

	def req_dates_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDEFF')
    end

	def req_dates_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDASH')
    end

	def req_dates_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDEND')
    end

	def req_dates_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtD_STATUS_MSG')
    end

	def case_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_CASE_NBR')
    end

	def member_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_MEMBER_NBR')
    end

	def auth_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTHORIZATION_NBR')
    end

	def trans_src
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_TRANS_SOURCE')
    end

	def source
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_SOURCE')
    end

	def episode_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_EPISODE_NBR')
    end

	def auth_by
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_BY')
    end

	def auth_dt
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDENTERED')
    end

	def initial_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDINIT')
    end

	def accident_date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDACCIDENT')
    end

	def admit_diag_dt_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_ADMIT_DIAG')
    end

	def admit_diag_dt_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDESC_ADMIT_DIAG')
    end

	def admit_diag_dt_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDADMIT_DIAG')
    end

	def alt_opn_req_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAOR_ADMIT_DIAG')
    end

	def alt_opn_req_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAOR_PRI_DIAG')
    end

	def alt_opn_req_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAOR_PRI_PROC')
    end

	def primary_diag_dt_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_DIAG_NBR')
    end

	def primary_diag_dt_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDESC_PRI_DIAG')
    end

	def primary_diag_dt_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_YMDDIAG1')
    end

	def primary_proc_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_PROC_NBR')
    end

	def primary_proc_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDESC_PRI_PROC')
    end

	def illness
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_ILLNESS')
    end

	def status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_STATUS')
    end

	def ex
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_EXPLAIN')
    end

	def ext_of_care
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AS_CODE')
    end

	def auth_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_TYPE')
    end

	def auth_follow_up
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_REASON')
    end

	def at
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_AT')
    end

	def h
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_H_COUNT')
    end

	def a
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_M_COUNT')
    end

	def o
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_O_COUNT')
    end

	def note
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCOMMENT_LINE')
    end

	def vendor_auth_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_VENDOR_AUTH')
    end

	def vendor_id
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_VENDOR_ID')
    end

	def member_info_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHEAD_TLE')
    end

	def member_info_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO1')
    end

	def member_info_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO2')
    end

	def member_info_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO3')
    end

	def member_info_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO4')
    end

	def member_info_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO5')
    end

	def member_info_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO6')
    end

	def member_info_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtINFO7')
    end

	def member_info_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDSPL_EX_KEYWORD')
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

	def member_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_MEMBER_NBR2')
    end

	def auth_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTHORIZATION_NBR2')
    end

	def auth_trans_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_AUTH_TRANS_NBR')
    end

	def trace_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtTRACE_NBR')
    end

	def trace_entity
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtTRACE_ENTITY')
    end

	def trace_additional
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtTRACE_ADDITIONAL')
    end

	def request_category
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_REQUEST_CAT')
    end

	def service_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_SERVICE_TYPE')
    end

	def level_of_service
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_LEVEL_SERVICE')
    end

	def admission_type
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_ADMISSION_TYPE')
    end

	def facility_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_FACILITY_CODE')
    end

	def place_of_service
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_PLACE_OF_SERVICE')
    end

	def health_condition
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_HEALTH_CONDITION')
    end

	def prognosis
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_PROGNOSIS')
    end

	def patient_status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_PATIENT_STATUS')
    end

	def nursing_home_status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_NURSING_HOME_ST')
    end

	def delay_reason
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_DELAY_REASON')
    end

	def release_info
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_RELINFO')
    end

	def military_status
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAUTHORIZATION_X_MILITARY_STATUS')
    end

	def error_message
	  $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
	end

	def closed_auth
	  "certification/closed_auth.PNG"
	end

	def member_number_link
      $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'lblAUTHORIZATION_X_MEMBER_NBR')
    end

end
