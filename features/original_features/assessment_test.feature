Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-02-02
Given I save the auth class "<auth_class>" to a variable
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "3" seconds
And in the "certification" page I should see the "loaded_sidebar" image
And I press "Control + N"
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And in the "Certification" page I enter the first "<service_code>" into the "Primary Proc Number 1" service code field and save the variable
And the test pauses for "2" seconds
And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

And in the "certification" page I should see the "loaded_blue_sidebar" image
And the test pauses for "3" seconds
And in the "Functions Menu" page I click on "Hospital Svcs"
And the test pauses for "3" seconds
And in the "hospital_services" page I should see the "est_admit" image
And the test pauses for "3" seconds
And in the "hospital_services" page I enter "<requested_date>" into the "est_admit" image
And in the "hospital_services" page I enter "<auth_approval_days>" into the "auth_days" image
And in the "hospital_services" page I enter "$" into the "facility_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And I determine whether something is PAR or NONPAR
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds

And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I copy the provider number to the clipboard and save the variable
And in the "hospital_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
And the test pauses for "3" seconds
And in the "authorized_services" page I click on the "save" image
And the test pauses for "3" seconds

And I press "F8"
And the test pauses for "3" seconds

And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "3" seconds
And in the "authorized_services" page I should see the "loaded_sidebar" image
And the test pauses for "3" seconds
And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
And the test pauses for "3" seconds
And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "5" seconds
And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "2" seconds
And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I copy the provider number to the clipboard and save the variable
And in the "authorized_services" page I should see the "loaded_sidebar" image
And in the "authorized_services" page I enter "$" into the "prov" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "prov_number" image
And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_search" page I should see the "loaded_header" image
And the test pauses for "3" seconds
And in the "provider_search" page I click on the "prov_affs" image
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "10" seconds
And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "2" seconds
And I determine whether something is PAR or NONPAR
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I copy the provider number to the clipboard and save the variable

And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
And the test pauses for "3" seconds
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "3" seconds

And in the "authorized_services" page I enter the first service code into the "proc_number" image
And the test pauses for "2" seconds
And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And in the "authorized_services" page I click on the "save" image
And the test pauses for "10" seconds

And I input the alternate procedure codes if there are any

And I input the notes if any are contained in "<notes>"
And the test pauses for "5" seconds

And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
And I input the EIS AA if any are contained in "<eis_aa>"
And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<created_by_snf>" "<created_date_snf>" "<days_used_prior>" "<dc>"
And I input the second SNF assessments if any are contained in "<denc_date>" "<mds_date>" "<saved_by_snf>" "<nomnc_date>" "<saved_date_snf>" "<total_days>" "<total_skilled_days>"

And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
And I press "Control + S"
And the test pauses for "3" seconds

And I press "Control + Q"
And the test pauses for "5" seconds
And I press ENTER graphically
And the test pauses for "5" seconds
And I close "Internet Explorer"

		Examples:
		| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name           | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name        | requesting_provider_npi_# |	facility_name                | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class  | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
    | 02012017        | 2017-02-01T11:48:47+00:00 | FIN0259194937028  | 000052557-01 | JANICE            | SMITH             | SOUND INPATIENT PHYS OF | 911533                  |                                  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755                | MOUNT CARMEL ST ANNS HOSPITAL | 920157                | 1417037045             | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045               | Inpatient   | IP             | Concurrent Review | CONC      |                               | MOUNT CARMEL ST ANNS HOSPITAL | 02022017    | Approved | MediGold Classic Preferred  | Reports    | ACO                  | Inpatient   | 01282017        | 02012017        | Standard | Pulmonary - $4,007   |        |     |                  |                 |    |           |          |            |            |                    | Concurrent Review | Approved       | A170201028   | J449, M6281, N390  | Urinary tract infection, site not specified              | ICD10          | 02022017            |                    |                                                                        |              | 0        | 0          |               | 0                  |                |                    | Received per vista report dated 01/29/2017, Admit date 01/28/2017, Admit type: observation, Clinical documentation reviewed in PowerChart, 72 yo F with PMH of COPD, HLD< Depression, ?Dementia, HTN, Anxiety, Lung Ca s/p lobectomy many years ago, former heavy smoker was brought in by daughter to outside ER for evaluation of frequent falls,  gait instability, confusion since 3 days. Pt also reportedly complained of difficulty voiding urine. Blood gas done at outside ER showed a pCO2 of 85 and pt was put on Bipap with considerable improvement in mental status.  , 97.5 65 18 133/51, Labs from outside ER reviewed-Na 133, K 4.1, Cr 0.6, WBC 8.6, Hb 9.3, Plt 226, LA 0.3, pH 7.28. XR chest was normal and CT head showed chronic small vessel disease.  , Not on bipap here.  on nasal canula.   will continue Solumedrol, Duonebs. No evidence of infiltrates on XR chest. Will give Levaquin as she may have a UTI as well., 1/29-Patient doing well overall. Saturating well on 2 L nasal cannula, no significant wheezing on auscultation., 1/30- continue Solu-Medrol. will decrease this to 40 mg IV every 12 hours., finish course of antibiotics.  continue bronchodilators., 1/31-switch patient to by mouth prednisone. Discharge order written., Dtr will not send her mother to a SNF/has had bad experiences at 2 facilities.  Teresa is agreeable with MCHC(SN,PT,OT,SW)., 2/01-CM note= Dtr asking for her mother to stay another night so she can get things ready.  Discussed that pt. was written for discharge yesterday & planning to discharge home today., Approved ACO-Pulmonary-N | 02012017 | Inpatient| Inpatient | Approved  | 5 |
