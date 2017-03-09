class HospitalServicesPage

	def hospital_services
	  $browser.frame(:name => 'Form').link(:text => 'Hospital Services')
	end
	
	def hospital_services_termed
	  "hospital_services/hospital_services_termed.PNG"
	end
	
	def close_browser
	  "hospital_services/close_browser.PNG"
	end
	
	def auth_number
	  "hospital_services/auth_number.PNG"
	end
	
	def member_number
	  "hospital_services/member_number.PNG"
	end
	
	def dpid_number_1
	  "hospital_services/dpid_number_1.PNG"
	end
	
	def dpid_number_2
	  "hospital_services/dpid_number_2.PNG"
	end
	
	def discharge_planning
	  "hospital_services/discharge_planning.PNG"
	end
	
	def case
	  "hospital_services/case.PNG"
	end
	
	def other_management
	  "hospital_services/other_management.PNG"
	end
	
	def record_number
	  "hospital_services/record_number.PNG"
	end
	
	def cert_type
	  "hospital_services/cert_type.PNG"
	end
	
	def cert_type_alternate
	  "hospital_services/cert_type_alternate.PNG"
	end
	
	def level_of_serv
	  "hospital_services/level_of_serv.PNG"
	end
	
	def rel_info
	  "hospital_services/rel_info.PNG"
	end
	
	def location
	  "hospital_services/location.PNG"
	end
	
	def est_admit
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDADMIT_EST') 
	end
	
	def est_admit_unselected
	  "hospital_services/est_admit_unselected.PNG"
	end
	
	def est_discharge
	  "hospital_services/est_discharge.PNG"
	end
	
	def facility_number
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_AFF_NBR') 
	end
	
	def att_prov_number_1
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROV_ATTEND') 
	end
	
	def att_prov_number_2
	  "hospital_services/att_prov_number_2.PNG"
	end
	
	def por_1
	  "hospital_services/por_1.PNG"
	end
	
	def por_2
	  "hospital_services/por_2.PNG"
	end
	
	def admit_id_number
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROV_ADMIT') 
	end
	
	def ref_prov_number_1
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_REF_AFF_NBR') 
	end
	
	def ref_prov_number_2
	  "hospital_services/ref_prov_number_2.PNG"
	end
	
	def diag_number_1
	  "hospital_services/diag_number_1.PNG"
	end
	
	def diag_number_2
	  "hospital_services/diag_number_2.PNG"
	end
	
	def diag_number_3
	  "hospital_services/diag_number_3.PNG"
	end
	
	def diag_number_4
	  "hospital_services/diag_number_4.PNG"
	end
	
	def diag_number_5
	  "hospital_services/diag_number_5.PNG"
	end
	
	def diag_number_6
	  "hospital_services/diag_number_6.PNG"
	end
	
	def diag_number_7
	  "hospital_services/diag_number_7.PNG"
	end
	
	def proc_number_1
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC_NBR') 
	end
	
	def proc_number_2
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDSURG') 
	end
	
	def proc_number_3
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC2_NBR') 
	end
	
	def newborn_weight
	  "hospital_services/newborn_weight.PNG"
	end
	
	def proc_number_4
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDSURG2') 
	end
	
	def proc_number_5
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC3_NBR') 
	end
	
	def proc_number_6
	  "hospital_services/proc_number_6.PNG"
	end
	
	def proc_number_7
	  "hospital_services/proc_number_7.PNG"
	end
	
	def req_days
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_DAYS_REQ') 
	end
	
	def auth_days
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_DAYS_AUTH') 
	end
	
	def est_amt
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_AMOUNT_EST') 
	end
	
	def auth_amt
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_AMOUNT_AUTH') 
	end
	
	def admit_type
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_ADMIT') 
	end
	
	def extent_of_care
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_AS_CODE') 
	end
	
	def auth_type
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMIStxtADMISSION_AUTH_TYPESION_YMDADMIT_EST') 
	end
	
	def compliance
	  "hospital_services/compliance.PNG"
	end
	
	def drg_number
	  "hospital_services/drg_number.PNG"
	end
	
	def mdc_number
	  "hospital_services/mdc_number.PNG"
	end
	
	def treatment_type
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_TREATMENT_TYPE') 
	end
	
	def proc_class
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_PROC_CLASS') 
	end
	
	def room_approved
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_ROOM_APPR') 
	end
	
	def phys_approv
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_APPROVED_BY') 
	end
	
	def date_1
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_YMDAPPROVAL') 
	end
	
	def reviewed_by
	  $browser.frame(:name => 'Form').text_field(:id => 'txtADMISSION_REVIEWED_BY') 
	end
	
	def date_2
	  "hospital_services/date_2.PNG"
	end
	
	def next_review
	  "hospital_services/next_review.PNG"
	end
	
	def next_review_populated
	  "hospital_services/next_review_populated.PNG"
	end
	
	def transfer
	  "hospital_services/transfer.PNG"
	end
	
	def date_3
	  "hospital_services/date_3.PNG"
	end
	
	def follow_up
	  "hospital_services/follow_up.PNG"
	end
	
	def at
	  "hospital_services/at.PNG"
	end
	
	def response
	  "hospital_services/response.PNG"
	end
	
	def status
	  "hospital_services/status.PNG"
	end
	
	def ex
	  "hospital_services/ex.PNG"
	end
	
	def alt_opinion
	  "hospital_services/alt_opinion.PNG"
	end
	
	def status_2
	  "hospital_services/status_2.PNG"
	end
	
	def ex_2
	  "hospital_services/ex_2.PNG"
	end
	
	def denial_effective_date
	  "hospital_services/denial_effective_date.PNG"
	end
	
	def trans_source
	  "hospital_services/trans_source.PNG"
	end
	
	def auth_trans_number
	  "hospital_services/auth_trans_number.PNG"
	end
	
	def auth_detail_trans_number
	  "hospital_services/auth_detail_trans_number.PNG"
	end
	
	def trans_code
	  "hospital_services/trans_code.PNG"
	end
	
	def date
	  "hospital_services/date.PNG"
	end
	
	def op_number
	  "hospital_services/op_number.PNG"
	end
	
	def save
	  "hospital_services/save.PNG"
	end
	
	def process_completed
	  "hospital_services/process_completed.PNG"
	end
	
	def full_hospital_services_window
	  "hospital_services/full_hospital_services_window.PNG"
	end
	
	def alt_opinion
	  "hospital_services/alt_opinion.PNG"
	end
	
	def alt_opinion_text_field
	  "hospital_services/alt_opinion_text_field.PNG"
	end
	
	def diag_number_6_information_entered
	  "hospital_services/diag_number_6_information_entered.PNG"
	end
	
	def diag_number_7_information_entered
	  "hospital_services/diag_number_7_information_entered.PNG"
	end
	
	def discharge_sum
	  "hospital_services/discharge_sum.PNG"
	end
	
end