Feature: Process Essette Extract SNF_Inpatient_New_Adds_12212017
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: SNF_Inpatient_New_Adds_12212017
Given I save the auth class "<auth_class>" to a variable
Given I use "<auth_admission_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

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

	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
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
	And the test pauses for "5" seconds
	And in the "hospital_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds

  And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "3" seconds

	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<service_code>" into the "proc_number" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page if the "<service_code>" equals R0022 I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
	And the test pauses for "3" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
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

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"
	And I input the final reimbursement amount if any is contained in "<final_reimb_amt>"
	And I input the drug doses "<add_drug_doses>" and drug reimbursement "<add_drug_reimb>" if they exist
	And I input the discharge date "<dischrg_date>" and final reimbursement amount two "<final_reimb_amt_2>" if they exist
	And I input the per diem level one "<per_diem_lvl_1>" and per diem level two "<per_diem_lvl_2>" and total days "<total_days>" and total per diem "<total_per_diem>" if they exist


	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
|requested_date|military_date|other_reference_#|member_id|member_first_name|member_last_name|practice_name|requesting_provider_id|requesting_provider_first_name|requesting_provider_last_name|requesting_provider_npi_#|facility_name|servicing_provider_id|provider_facility_npi|servicing_provider_name|servicing_provider_npi_#|sub_class|sub_class_code|type|type_code|servicing_provider_first_name|servicing_provider_last_name|status_date|status|health_plan|source|status_reason|auth_class|authorized_date|expiration_date|priority|aco_type_and_payment|eis_aa|adm|auth_for_payment|days_used_prior|dc|denc_date|mds_date|nomnc_date|total_days|total_skilled_days|final_reimb_amt|amisys_auth_number|add_drug_doses|add_drug_reimb|dischrg_date|final_reimb_amt_2|per_diem_lvl_1|per_diem_lvl_2|total_days1|total_per_diem|auth_type|auth_status|auth_number|diagnosis_code|diagnosis|diagnosis_type|auth_modified_date|auth_admission_date|auth_discharge_date|service_code|service_description|service_type|qty_appr|qty_reqd|determination|auth_approval_days|service_type1|service_type_code1|notes|blank_01|blank_02|qty|
|11202017|2017-11-20T13:11:38+00:00||000043578-01|DEBORAH|NUNGESTER|INTL MED & REHAB CNSLT L|900504|THOMAS E|MCELDOWNEY|1760573810|LAURELS OF HILLIARD|913334|1528381019|LAURELS OF HILLIARD|1528381019|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LAURELS OF HILLIARD|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11182017|12112017|Standard|||11182017|17/RVC01=$6,306.19 PER DIEM RATE OF $250.00/DAY X 3=$750.00 TOTAL PAYMENT=$7,056.19|0|12112017||12192017||23|23|||||||||||Concurrent Review|Approved|A171120115|J9600|Acute respiratory failure, unsp w hypoxia or hypercapnia|ICD10|12212017|11182017|12112017|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|7056|7056|Approved Skilled|24|Revenue|RV||||3|
|11272017|2017-11-27T12:11:52+00:00||000026404-01|RONALD|WALLACE|AT YOUR DOOR VISITING HE|935738|STEPHEN M|CANOWITZ|1174573224|PICKERINGTON LEASING LLC|951358|1245770031|PICKERINGTON CARE & REHABILITATION|1245770031|Skilled Nursing Facility|SNF|Concurrent Review|CONC||PICKERINGTON CARE & REHABILITATION|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11222017|12162017|Standard|||11222017|Per MDS: 17/RVA01 = $3586.28|0|12162017|12202017|12202017|12202017|24|24|||||||||||Concurrent Review|Approved|A171127139|L03116, Z952|Presence of prosthetic heart valve|ICD10|12212017|11222017|12162017|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|25|RUGS,HHRG|HP||||4|
|10272017|2017-10-27T14:43:34+00:00||000095908-01|Virginia|Place|AT YOUR DOOR VISITING HE|935738|STEPHEN M|CANOWITZ|1174573224|PICKERINGTON LEASING LLC|951358|1245770031|PICKERINGTON CARE & REHABILITATION|1245770031|Skilled Nursing Facility|SNF|Concurrent Review|CONC||PICKERINGTON CARE & REHABILITATION|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|10252017|12162017|Standard|||10252017|Per MDS: 17/RVB01 = $5411.86 Per Diem: $250.00/day x 32 days = $8000.00 TOTAL PAYMENT = $13,411.86|0|12162017|12202017|12202017|12202017|52|52|$13,411.86||||||||||Concurrent Review|Approved|A171027063|S42201A|Unsp fracture of upper end of right humerus, init|ICD10|12212017|10252017|12162017|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|1|1|Approved|53|Revenue|RV||||3|
|10302017|2017-10-30T12:19:11+00:00||000011848-01|JOAN|PEARSON|HOSPICE OF CENTRAL OHIO|904131|STUART J|KANTER|1730122193|MOTHER ANGELINE MCCRORY|916665|1730243932|MOTHER ANGELINE MCCRORY MANOR|1730243932|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MOTHER ANGELINE MCCRORY MANOR|12212017|Approved|MediGold Essential Care|Fax|SNF|Inpatient|11012017|12152017|Standard|||11012017|Per Diem: $200.00/day x 39 days = $7800.00 IV Pipercillin (per invoice) = $1877.96 Wound Vac (per invoice) = $1350.00  TOTAL PAYMENT = $11,027.96|15|12152017||12202017|12152017|39|54|$11,027.96||||||||||Concurrent Review|Approved|A171030100|A047, F0390, I10, I4891, M86251|Subacute osteomyelitis, right femur|ICD10|12212017|11012017|12152017|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|1|1|Approved|45|Revenue|RV||||11|
|11162017|2017-11-16T08:36:41+00:00||000053568-01|JUDITH|KELLER|INTL MED & REHAB CNSLT L|900504|THOMAS E|MCELDOWNEY|1760573810|LAURELS OF HILLIARD|913334|1528381019|LAURELS OF HILLIARD|1528381019|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LAURELS OF HILLIARD|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11142017|12042017|Standard|||11142017|17/RVB01=$5,411.86|38|12042017||12192017|12192017|20|58|||||||||||Concurrent Review|Approved|A171116014|G40309|Gen idiopathic epilepsy, not intractable, w/o stat epi|ICD10|12212017|11142017|12042017|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved Skilled|21|RUGS,HHRG|HP||||20|
|11282017|2017-11-28T13:32:03+00:00||000070388-01|Rita|Jordan|COPC CENTRAL OHIO PRIMAR|937380|NEIL E|RICHARD|1801865670|WORTHINGTON CHRISTIAN VI|939361|1194722744|WORTHINGTON CHRISTIAN VILLAGE|1194722744|Skilled Nursing Facility|SNF|Concurrent Review|CONC||WORTHINGTON CHRISTIAN VILLAGE|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11292017|12192017|Standard|||11292017|Contract/RUG: 17/RVA (Per MDS) = $3,586.28|0|12192017||12212017|12192017|20|20|||||||||||Concurrent Review|Approved|A171129018|I69920|Aphasia following unspecified cerebrovascular disease|ICD10|12212017|11292017|12192017|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|21|RUGS,HHRG|HP||||20|
|11292017|2017-11-29T13:37:37+00:00||000088202-01|Alva|Azbell|VARNEY, LEROY B|936105|LEROY B|VARNEY|1790756740|LANFAIR CTR FOR REHAB &|939399|1710959267|LANFAIR CTR FOR REHAB & NURSING CARE|1710959267|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LANFAIR CTR FOR REHAB & NURSING CARE|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11282017|12122017|Standard|||11282017|Per MDS: 17/RVC01 = $6306.19|0|12122017||12132017|12202017|14|14|||||||||||Concurrent Review|Approved|A171130028|Z48812, Z951|Presence of aortocoronary bypass graft|ICD10|12212017|11282017|12122017|RVC01|VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|15|RUGS,HHRG|HP||||14|
|11302017|2017-11-30T15:12:56+00:00||000033461-01|ALNITA|MOYER|VARNEY, LEROY B|936105|LEROY B|VARNEY|1790756740|LANFAIR CTR FOR REHAB &|939399|1710959267|LANFAIR CTR FOR REHAB & NURSING CARE|1710959267|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LANFAIR CTR FOR REHAB & NURSING CARE|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11292017|12142017|Standard|||11292017|Per MDS: 17/RVB01 = $5411.86|0|12142017||12192017|12182017|15|15|||||||||||Concurrent Review|Approved|A171130116|J918, N183|Chronic kidney disease, stage 3 (moderate)|ICD10|12212017|11292017|12142017|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|16|RUGS,HHRG|HP||||15|
|11302017|2017-11-30T15:39:45+00:00||000004057-01|BERNARD|ROYSTER|ASSISTED LIVING MEDICAL|935040|DAVID E|WHITT|1710961438|PICKERINGTON LEASING LLC|951358|1245770031|PICKERINGTON CARE & REHABILITATION|1245770031|Skilled Nursing Facility|SNF|Concurrent Review|CONC||PICKERINGTON CARE & REHABILITATION|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11272017|12192017|Standard|||11272017|Per MDS: 17/RVA01 = $3586.28|0|12192017|12202017|12202017|12202017|22|22|||||||||||Concurrent Review|Approved|A171130117|I959, J209|Acute bronchitis, unspecified|ICD10|12212017|11272017|12192017|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|23|RUGS,HHRG|HP||||2|
|12042017|2017-12-04T09:48:36+00:00||000104133-01|Betty|Crosbie|LONDON HEALTH & REHAB CENTER|943587||LONDON HEALTH & REHAB CENTER|1912387879|LONDON HEALTH & REHAB CENTER|943587|1912387879|LONDON HEALTH & REHAB CENTER|1912387879|Skilled Nursing Facility|SNF|Concurrent Review|CONC||LONDON HEALTH & REHAB CENTER|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11302017|12202017|Standard|||11302017|Contract/RUG: 17/RHA (Per MDS) = $2,812.08|0|12202017||12192017|12192017|20|20|||||||||||Concurrent Review|Approved|A171204108|M6281|Muscle weakness (generalized)|ICD10|12212017|11302017|12202017|RHA01|HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|21|RUGS,HHRG|HP||||20|
|12042017|2017-12-04T12:58:07+00:00||000087294-01|James|Ebner|HOSP SVC MED GRP OF CLAR|901387|IMTIAZ|AHMED|1619986155|VILLA SPRINGFIELD|906468|1922138098|VILLA SPRINGFIELD|1922138098|Skilled Nursing Facility|SNF|Concurrent Review|CONC||VILLA SPRINGFIELD|12212017|Approved|MediGold Essential Care|Fax|SNF|Inpatient|12012017|12192017|Standard|||12012017|Contract/ RUG: 16/RUB (Per MDS) = $4,429.71|0|12192017||12212017|12212017|18|18|||||||||||Concurrent Review|Approved|A171204151|R7881|Bacteremia|ICD10|12212017|12012017|12192017|RUB01|ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|19|RUGS,HHRG|HP||||18|
|12042017|2017-12-04T15:06:01+00:00||000038461-01|J|CROOK|COLONNADE MED GRP INC|900895|TROY E|HAMPTON|1275536377|HOMESTEAD CARE & REHAB C|908539|1174579239|HOMESTEAD CARE & REHAB CENTER|1174579239|Skilled Nursing Facility|SNF|Concurrent Review|CONC||HOMESTEAD CARE & REHAB CENTER|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|11302017|12202017|Standard|||11302017|Per MDS: 17/RVA01 = $3586.28|0|12202017||12212017|12212017|20|20|||||||||||Concurrent Review|Approved|A171204161|Z5189, S92524S|Nondisp fx of medial phalanx of right lesser toe(s), sequela|ICD10|12212017|11302017|12202017|RVA01|VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|21|RUGS,HHRG|HP||||20|
|12042017|2017-12-04T16:35:19+00:00||000077169-01|Sula|Holley|CEN OHIO GERIATRICS LLC|907151|JEROME M|KONG|1598711657|FIRST COMMUNITY VILLAGE|939347|1457334476|FIRST COMMUNITY VILLAGE|1457334476|Skilled Nursing Facility|SNF|Concurrent Review|CONC||FIRST COMMUNITY VILLAGE|12212017|Approved|MediGold Southeast OH Classic Preferred|Fax|SNF|Inpatient|12032017|12132017|Standard|||12032017|17/RUB01=$5,813.99|0|12132017||12202017|12202017|10|10|||||||||||Concurrent Review|Approved|A171205056|K745|Biliary cirrhosis, unspecified|ICD10|12212017|12032017|12132017|RUB01|ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved Skilled|11|RUGS,HHRG|HP||||10|
|12052017|2017-12-05T12:27:46+00:00||000009279-01|CARL|STROHMEYER|HALL G CANTER JR MD|921998|HALL G|CANTER JR|1962491316|SOMERSET HEALTH & REHABILITATION C|942963|1952791758|SOMERSET HEALTH & REHABILITATION C|1952791758|Skilled Nursing Facility|SNF|Concurrent Review|CONC||SOMERSET HEALTH & REHABILITATION C|12212017|Approved|MediGold Essential Care|Fax|SNF|Inpatient|12032017|12202017|Standard|||12032017|Per MDS: 17/RUA01 = $3214.76|0|12202017||12202017|12202017|17|17|||||||||||Concurrent Review|Approved|A171205091|I618|Other nontraumatic intracerebral hemorrhage|ICD10|12212017|12032017|12202017|RUA01|ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|18|RUGS,HHRG|HP||||17|
|12062017|2017-12-06T10:51:29+00:00||000006054-01|DIANE|GAVORCIK|ARBOR VIEW FAM MED INC|937109|JOHN E|LLOYD|1740252923|ARBORS AT CARROLL|943297|1528466471|ARBORS AT CARROLL|1528466471|Skilled Nursing Facility|SNF|Concurrent Review|CONC||ARBORS AT CARROLL|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|12042017|12192017|Standard|||12042017|Per MDS: 17/RVB01 = $5411.86|0|12192017||12202017|12202017|10|10|||||||||||Concurrent Review|Approved|A171206055|G9341|Metabolic encephalopathy|ICD10|12212017|12042017|12192017|RVB01|VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|16|RUGS,HHRG|HP||||8|
|12072017|2017-12-07T13:10:49+00:00||000100405-01|Lois|Butler|SYAMOQ ELDERCARE INC|921419|SYED A|MOQEETH|1669448171|OHIO LIVING LLANFAIR|945092|1366438343|OHIO LIVING LLANFAIR|1366438343|Skilled Nursing Facility|SNF|Concurrent Review|CONC||OHIO LIVING LLANFAIR|12212017|Approved|MediGold Southwest OH Essential Care|Fax|SNF|Inpatient|12062017|12202017|Standard|||12062017|Contract/RUG: 17/RUA (Per MDS) = $3,214.76|0|12202017||12212017|12212017|14|14|||||||||||Concurrent Review|Approved|A171207056|Z96641|Presence of right artificial hip joint|ICD10|12212017|12062017|12202017|RUA01|ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|15|RUGS,HHRG|HP||||14|
|12082017|2017-12-08T14:23:49+00:00||000057516-01|MICHAEL|CHERUBINI|AEBI GINTY ROMAKER SPROU|934863|ROBERT J|SPROUSE|1699754945|HOMESTEAD CARE & REHAB C|908539|1174579239|HOMESTEAD CARE & REHAB CENTER|1174579239|Skilled Nursing Facility|SNF|Concurrent Review|CONC||HOMESTEAD CARE & REHAB CENTER|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|12062017|12102017|Standard|||12062017|Per MDS: 17/HC101 = $3481.78|20|12102017||12192017|12192017|4|24|||||||||||Concurrent Review|Approved|A171208086|Z5189, Z4889|Encounter for other specified surgical aftercare|ICD10|12212017|12062017|12102017|HC101|SPECIAL CARE HIGH , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|5|RUGS,HHRG|HP||||4|
|12082017|2017-12-08T15:33:40+00:00||000070802-01|Jane|Langdon|TO, NHA T|916638|NHA T|TO|1700997558|HEARTLAND OF SPRINGFIELD|905915|1326083122|HEARTLAND OF SPRINGFIELD OH LLC|1326083122|Skilled Nursing Facility|SNF|Concurrent Review|CONC||HEARTLAND OF SPRINGFIELD OH LLC|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|12062017|12162017|Standard|||12062017|Contract/RUG: 17/RUB (Per MDS) = $5,813.99|0|12162017||12202017|12212017|10|10|||||||||||Concurrent Review|Approved|A171208090|J9600|Acute respiratory failure, unsp w hypoxia or hypercapnia|ICD10|12212017|12062017|12162017|RUB01|ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|11|RUGS,HHRG|HP||||10|
|12082017|2017-12-08T15:55:09+00:00||000087404-01|Darlene|Nelson|TO, NHA T|916638|NHA T|TO|1700997558|HEARTLAND OF SPRINGFIELD|905915|1326083122|HEARTLAND OF SPRINGFIELD OH LLC|1326083122|Skilled Nursing Facility|SNF|Concurrent Review|CONC||HEARTLAND OF SPRINGFIELD OH LLC|12212017|Approved|MediGold Essential Care|Fax|SNF|Inpatient|12062017|12192017|Standard|||12062017|Contract/RUG: 17/RVC (Per MDS) = $6,306.19|0|12192017||12202017|12202017|13|13|||||||||||Concurrent Review|Approved|A171208091|E860, G9341, I214, M6281, R1311, R1312|Dysphagia, oropharyngeal phase|ICD10|12212017|12062017|12192017|RVC01|VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|14|RUGS,HHRG|HP||||13|
|12112017|2017-12-11T12:30:08+00:00||000066915-01|RAYMOND|BISHOP|FCMH MED & SURG ASSOC|935806|DENNIS A|MESKER|1467446146|FAYETTE COUNTY MEM HSP 1|903662|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Skilled Nursing Facility|SNF|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|12212017|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|12092017|12202017|Standard|||12092017|Swing Bed Daily Rate|0|12202017|||12182017|11|11|Swing Bed Daily Rate||||||||||Concurrent Review|Approved|A171211126|Z5189|Encounter for other specified aftercare|ICD10|12212017|12092017|12202017|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|1|1|Approved|12|Revenue|RV||||5|
|12132017|2017-12-13T14:56:22+00:00||000081974-01|John|Coppel|PICKAWAY HEALTH SERVICES|934811|YADWINDER|SINGH|1083608830|TRADITIONS AT CHILLICOTH|906071|1457305997|TRADITIONS AT CHILLICOTHE|1457305997|Skilled Nursing Facility|SNF|Concurrent Review|CONC||TRADITIONS AT CHILLICOTHE|12212017|Approved|MediGold Essential Care|Fax|SNF|Inpatient|12122017|12202017|Standard|||12122017|Per MDS: 17/RVC01 = $6306.19|15|12202017||12212017|12212017|8|23|||||||||||Concurrent Review|Approved|A171213100|J9621|Acute and chronic respiratory failure with hypoxia|ICD10|12212017|12122017|12202017|RVC01|VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|9|RUGS,HHRG|HP||||8|
|12182017|2017-12-18T15:41:28+00:00||000063860-01|BERNICE|RIFFLE|PICKAWAY HEALTH SERVICES|935078|VERNON G|BOLENDER|1255322814|SUNBRIDGE CIRCLEVILLE HL|907244|1447206503|CIRCLEVILLE CARE & REHAB CENTER|1447206503|Skilled Nursing Facility|SNF|Concurrent Review|CONC||CIRCLEVILLE CARE & REHAB CENTER|12212017|Denied Skilled - Pay Unskilled|MediGold Classic Preferred|Fax||Inpatient|12152017|12192017|Standard|||12152017|ADMISSON DENIAL: Non skilled Per Diem: $200.00/day x 4 days = $800.00 TOTAL PAYMENT = $800.00|0|12192017||||0|0|$800.00||||||||||Concurrent Review|Denied Skilled - Pay Unskilled|A171219032|M6281|Muscle weakness (generalized)|ICD10|12212017|12152017|12192017|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|800|800|Approved|5|Revenue|RV||||4|
