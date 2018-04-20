Feature: Process Essette Extract UrgeMerge_Inpatient_New_Adds_04152018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: UrgeMerge_Inpatient_New_Adds_04152018
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
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
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
|03262018|2018-03-26T11:45:48+00:00||000053754-01|LOIS|MOORE|ORTHO & NEUROLOGICAL CNS|942983      0007|RYAN M|PALMER|1912134487|MOUNT CARMEL NEW ALBANY SURGICAL HSP|920176      0003|1770668568|MOUNT CARMEL NEW ALBANY SURGICAL HSP|1770668568|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL NEW ALBANY SURGICAL HSP|04152018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04122018|04132018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180326040|M1712|Unilateral primary osteoarthritis, left knee|ICD10|04152018|04122018|04132018|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|2|CPT|C4||||1|
|03272018|2018-03-27T09:25:55+00:00||000072575-01|RONALD|TUCKER|HOSPITALIST MEDICINE PHY|952663      0001|JESSE|DION|1619383734|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04152018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03272018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180327082|A419, M869|Osteomyelitis, unspecified|ICD10|04152018|03272018|04132018||||0|0||0||||||17|
|04042018|2018-04-04T09:35:02+00:00||000072310-01|Marilee|Rine|ORTHOPEDIC & NEUROLOGICA|936690      0004|MARK E|GITTINS|1598749699|MOUNT CARMEL NEW ALBANY SURGICAL HSP|920176      0003|1770668568|MOUNT CARMEL NEW ALBANY SURGICAL HSP|1770668568|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL NEW ALBANY SURGICAL HSP|04152018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04122018|04142018|Standard||No|||0|||||0|0|||||||||||Concurrent Review|Approved|A180404026|M1611, M25551|Pain in right hip|ICD10|04152018|04122018|04142018|27130|CHARN MILLER TTL HIP ARTHROPLASTY|CPT|1|1|Approved|3|CPT|C4||||2|
|04052018|2018-04-05T14:19:55+00:00||000072013-01|Robert|Langford|MOUNT CARMEL HLTH SYS|919184      0006|ASHITA|SINHA|1821110693|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04042018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180405042|J159, R042|Hemoptysis|ICD10|04152018|04042018|04132018||||0|0||0||||||9|
|04052018|2018-04-05T12:10:58+00:00||000087586-01|Ronald|Bushhorn|MERCY HOSPITAL FAIRFIELD|936431      0001||MERCY HOSPITAL FAIRFIELD|1467552471|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|04152018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|04052018|04092018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180405043|I348|Other nonrheumatic mitral valve disorders|ICD10|04152018|04052018|04092018||||0|0||0||||||4|
|04052018|2018-04-05T16:34:58+00:00||000029973-01|JANET|KNAUFF|MOUNT CARMEL ST ANNS HOSPITAL|920157      0001||MOUNT CARMEL ST ANNS HOSPITAL|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04152018|Approved|TRINITY HEALTH|Fax|Inpatient|Inpatient|04042018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180405071|J159|Unspecified bacterial pneumonia|ICD10|04152018|04042018|04132018||||0|0||0||||||9|
|04082018|2018-04-08T10:42:15+00:00||000018544-01|JAIME|RICO ORDEIX|MOUNT CARMEL HLTH SYS|941655      0003|ROHIT|CHAND|1285991976|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04062018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409044|I509|Heart failure, unspecified|ICD10|04152018|04062018|04142018||||0|0||0||||||8|
|04092018|2018-04-09T12:03:11+00:00||000043825-01|PAUL|LAMBERT|HOSPITALIST MEDICINE PHY|914979      0005|JORN|KAEVEL|1275793150|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04072018|04142018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410026|J209, R0902|Hypoxemia|ICD10|04152018|04072018|04142018||||0|0||0||||||7|
|04112018|2018-04-11T10:18:09+00:00||000103550-01|Herbert|Allen|MOUNT CARMEL HLTH PRVDRS|949510      0001|MARK W|BYRGE|1053307389|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|EIS|Inpatient|04122018|04132018|Expedited||No|||0|||||0|0|||||||||||Concurrent Review|Approved|A180411027|I6521|Occlusion and stenosis of right carotid artery|ICD10|04152018|04122018|04132018|35301|THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION)|CPT|1|1|Approved|2|CPT|C4||||1|
|04112018|2018-04-11T12:31:56+00:00||000068280-01|ROSEWIN|OCHS|INDEPENDENT INPATIENT PH|907729      0001|MARK|DELLINGER|1710924410|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04082018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411072|I4891|Unspecified atrial fibrillation|ICD10|04152018|04082018|04132018||||0|0||0||||||5|
|04132018|2018-04-13T09:06:37+00:00||000064988-01|DONALD|KRAMER|CEN OH UROLOGY GRP INC|937296      0001|RASHMI I|PATEL|1295775930|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04152018|Approved|MediGold Essential Care|Fax|EIS|Inpatient|04122018|04142018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180413029|R338|Other retention of urine|ICD10|04152018|04122018|04142018||||0|0||0||||||2|
