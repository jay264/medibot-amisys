Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-05_thru_2018-01-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-05_thru_2018-01-07_URGEMERG
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
| 10102017 | 2017-10-10T14:36:08+00:00 |  | 000031919-01 | Joann | Blankenship | CLEVELAND CLINIC FNDN | 909651 | VIKRAM S | KASHYAP | 1548227457 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 01052018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12042017 | 12062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010085 | I724 | Aneurysm of artery of lower extremity | ICD10 | 01052018 | 12042017 | 12062017 | 37217 | STENT PLACEMT RETRO CAROTID | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12112017 | 2017-12-11T15:45:29+00:00 |  | 000064188-01 | FRANCIS | BENSON | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212028 | M4726, M961, M48062 | M48062 | ICD10 | 01052018 | 01022018 | 01042018 | 22558, 22853, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 12122017 | 2017-12-12T15:23:09+00:00 |  | 000106773-01 | Martha | Otto | KNOX COMMUNITY HSP PHYS | 928353 | JARRETT B | HELMING | 1891995072 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 01052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171212087 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01052018 | 01022018 | 01042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12212017 | 2017-12-21T13:53:58+00:00 |  | 000102381-01 | AMANDA | BOWERS | SELF EMPLOYED NP DEVELOP | 907335 | ROWNAK | AHMED | 1952518334 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 01052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12212017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221060 | F1220, F314, F329, F603 | Borderline personality disorder | ICD10 | 01052018 | 12212017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 12262017 | 2017-12-26T10:02:49+00:00 |  | 000015343-01 | ARTHUR | POTTER | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226098 | S42202A | Unsp fracture of upper end of left humerus, init for clos fx | ICD10 | 01052018 | 12242017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12262017 | 2017-12-26T10:05:14+00:00 |  | 000118148-01 | PAMELA | THERRIEN | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 01012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226104 | R0902 | Hypoxemia | ICD10 | 01052018 | 12252017 | 01012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T11:05:33+00:00 |  | 000107457-01 | Richard | Kinneer | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12232017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226142 | M6282 | Rhabdomyolysis | ICD10 | 01052018 | 12232017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12272017 | 2017-12-27T09:14:38+00:00 | 255032217360 | 000034825-01 | KENNETH | RILEY | HOSPITALIST MEDICINE PHY | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12262017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227019 | J9600, R569 | Unspecified convulsions | ICD10 | 01052018 | 12262017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12272017 | 2017-12-27T12:56:42+00:00 |  | 000092732-01 | Jody | Fulks | SOUND KENWOOD HSPISTS OF | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01072018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227074 | A419 | Sepsis, unspecified organism | ICD10 | 01072018 | 12272017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T11:30:41+00:00 |  | 000097094-01 | Ernest | Neufeld | ALLIANCE PHYSICIANS INC | 952687 | MOHAMMED O | ALI | 1144532409 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01042018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228045 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01042018 | 12272017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T13:01:37+00:00 |  | 000088146-01 | Bobby | Gibson | ADENA MEDICAL GROUP LLC | 936383 | DANIEL J | EVANS | 1760477640 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228065 | R079, R9439 | Abnormal result of other cardiovascular function study | ICD10 | 01052018 | 12272017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12282017 | 2017-12-28T15:40:27+00:00 |  | 000117120-01 | Janet | Baker | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12282017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228079 | J189, J90, R0602, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01052018 | 12282017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12292017 | 2017-12-29T08:55:50+00:00 |  | 000109961-01 | Peggy | Farmer | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01052018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01032018 | 01052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229022 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 01052018 | 01032018 | 01052018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12292017 | 2017-12-29T14:19:19+00:00 |  | 000105059-01 | Robert | Huffman | AINA MEDICAL INC | 939947 | OLAYINKA O | AINA | 1295706976 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 01052018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229080 | J189 | Pneumonia, unspecified organism | ICD10 | 01052018 | 12282017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01022018 | 2018-01-02T09:08:36+00:00 | 250007767365 | 000104659-01 | Barbara | Adkins | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102007 | D61810, R040 | Epistaxis | ICD10 | 01052018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T10:06:01+00:00 | 263847377364 | 000045585-01 | SYLVIA | MEYERS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102019 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 01052018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12302017 | 2017-12-30T15:32:06+00:00 |  | 000107264-01 | James | Gifford | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01052018 | Approved | MediGold Southwest OH Essential Care | Fax | Secondary Only | Inpatient | 12302017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102022 | C259, D72829, E872, E875, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01052018 | 12302017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12302017 | 2017-12-30T15:50:33+00:00 |  | 000117835-01 | JULIA | EVERETT | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 01052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102046 | I959, K529, R112, R197 | Diarrhea, unspecified | ICD10 | 01052018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12312017 | 2017-12-31T08:57:03+00:00 |  | 000052557-01 | JANICE | SMITH | COPC CENTRAL OHIO PRIMAR | 915278 | BRIAN S | TAYLOR | 1205076569 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102048 | A419 | Sepsis, unspecified organism | ICD10 | 01072018 | 12282017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01012018 | 2018-01-01T12:59:03+00:00 |  | 000085195-01 | George | Giammarino | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102051 | I4891 | Unspecified atrial fibrillation | ICD10 | 01052018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01032018 | 2018-01-03T08:16:20+00:00 |  | 000037832-01 | DONALD | SHAFFER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103067 | R296, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01052018 | 12302017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T10:54:41+00:00 |  | 000099743-01 | Arthur | Moore | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 01042018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 01042018 | 01052018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180103070 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 01042018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01032018 | 2018-01-03T10:40:14+00:00 |  | 000046332-01 | DELBERT | BACKUS | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01022018 | 01042018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103102 | I509 | Heart failure, unspecified | ICD10 | 01052018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T08:21:21+00:00 |  | 000100513-01 | Carol | Richardson | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12292017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104004 | I70209 | Unsp athscl native arteries of extremities, unsp extremity | ICD10 | 01052018 | 12292017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12202017 | 2017-12-20T15:19:33+00:00 |  | 000088777-01 | Patsy | Osborne | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220074 | R112 | Nausea with vomiting, unspecified | ICD10 | 01052018 | 12192017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 12212017 | 2017-12-21T13:14:56+00:00 |  | 000045839-01 | MARY | WHYTE | COSHOCTON COUNTY MEM HSP | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221056 | M1711, M25561 | Pain in right knee | ICD10 | 01052018 | 01022018 | 01042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 12282017 | 2017-12-28T12:49:21+00:00 |  | 000121345-01 | Linda | Prange | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228051 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01052018 | 01032018 | 01042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01022018 | 2018-01-02T09:46:01+00:00 | 254045677366 | 000005674-01 | DIANA | CINTRON | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102011 | I4891 | Unspecified atrial fibrillation | ICD10 | 01052018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T10:39:47+00:00 | 255945727364 | 000114015-01 | Dorothy | Pedersen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102028 | R4182 | Altered mental status, unspecified | ICD10 | 01052018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01022018 | 2018-01-02T12:31:21+00:00 |  | 000072057-01 | Donald | Souder | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103007 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01052018 | 01012018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12192017 | 2017-12-19T14:25:16+00:00 |  | 000102118-01 | Marlene | Simms | MOUNT CARMEL HLTH PRVDRS | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171219110 | M4316 | Spondylolisthesis, lumbar region | ICD10 | 01052018 |  |  | 22858, 22845, 22853, 22585, 20936, 20930, 22558 | ARTHRDSIS; LUMBAR W/ BONE GRAFT | CPT | 1, 1, 1, 1, 1, 1, 0 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved,  | 61, 61, 61, 61, 61, 61, 61 | CPT | C4 |  |  | No child records to display. |  |
| 12262017 | 2017-12-26T11:15:04+00:00 |  | 000077344-01 | Joyce | Gessel | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12242017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227044 | R6521 | Severe sepsis with septic shock | ICD10 | 01052018 | 12242017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12272017 | 2017-12-27T16:04:56+00:00 |  | 000022211-01 | MARLENE | HOOVER | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227095 | I509 | Heart failure, unspecified | ICD10 | 01052018 | 12272017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12282017 | 2017-12-28T14:02:16+00:00 |  | 000061644-01 | DONALD | DUNCAN | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228061 | M24661 | Ankylosis, right knee | ICD10 | 01052018 | 01032018 | 01042018 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12292017 | 2017-12-29T09:52:51+00:00 | 251681127362 | 000024664-01 | ETHEL | FORD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12282017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229024 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01052018 | 12282017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01022018 | 2018-01-02T09:09:19+00:00 | 266015357364 | 000005208-01 | RAY | MONROE | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102006 | I998 | Other disorder of circulatory system | ICD10 | 01052018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01012018 | 2018-01-01T13:00:26+00:00 |  | 000034751-01 | ALBERT | DONAHUE | FCMH MED & SURG ASSOC | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102052 | J189 | Pneumonia, unspecified organism | ICD10 | 01072018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01022018 | 2018-01-02T10:45:16+00:00 |  | 000120144-01 | Dale | Watson | OSU INTERNAL MED LLC | 927917 | CHRISTY N | MULLIGAN | 1639303738 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103001 | R55 | Syncope and collapse | ICD10 | 01052018 | 12292017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T11:25:50+00:00 |  | 000107061-01 | Sharon | Arledge | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103004 | I4891 | Unspecified atrial fibrillation | ICD10 | 01052018 | 12312017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T12:34:02+00:00 |  | 000016601-01 | RAYMOND | STACK | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103010 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 01052018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T13:18:57+00:00 |  | 000058617-01 | MICHAEL | SIMPSON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103115 | K5792, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01052018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12112017 | 2017-12-11T09:16:51+00:00 | 254968267345 | 000043578-01 | DEBORAH | NUNGESTER | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12112017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211024 | R4182 | Altered mental status, unspecified | ICD10 | 01052018 | 12112017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 12202017 | 2017-12-20T15:02:04+00:00 |  | 000077372-01 | Walter | Hughes | TRI STATE HSPISTS LLC | 932234 | ANDREW J | CASTELLANOS | 1144409392 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 01052018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12192017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171220073 | A419, G9340, J159, R4182, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 01052018 | 12192017 | 12262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12212017 | 2017-12-21T14:26:05+00:00 |  | 000085013-01 | Beverly | Howdyshell | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12202017 | 12232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221057 | I959, R0902, R509 | Fever, unspecified | ICD10 | 01052018 | 12202017 | 12232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12222017 | 2017-12-22T12:41:52+00:00 |  | 000087007-01 | Janice | Knisley | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12212017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222057 | L089, M79605, T148XXA | T148XXA | ICD10 | 01052018 | 12212017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12262017 | 2017-12-26T09:42:06+00:00 | 253934847358 | 000015504-01 | RONALD | HYDE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12242017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226035 | G9341 | Metabolic encephalopathy | ICD10 | 01052018 | 12242017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 12262017 | 2017-12-26T15:22:36+00:00 |  | 000113220-01 | Michael | Stacey | COPC CENTRAL OHIO PRIMAR | 943501 | PAUL Y | HE | 1346502648 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 01072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12252017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226190 | K625 | Hemorrhage of anus and rectum | ICD10 | 01072018 | 12252017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01022018 | 2018-01-02T10:43:47+00:00 | 250886877366 | 000004440-01 | ELAINE | PHILLIPS | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 01012018 | 01042018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102029 | J189 | Pneumonia, unspecified organism | ICD10 | 01052018 | 01012018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T10:58:55+00:00 | 251082887365 | 000018527-01 | RICHARD | SAMPSON | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102035 | M6281 | Muscle weakness (generalized) | ICD10 | 01052018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12312017 | 2017-12-31T10:35:42+00:00 |  | 000093046-01 | Thomas | Gardner | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102049 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 01052018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01032018 | 2018-01-03T15:40:40+00:00 |  | 000003964-01 | BERNADINE | GROSS | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01052018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104020 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 01052018 | 01022018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T16:17:50+00:00 |  | 000099587-01 | Rudolf | Sperger | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 01052018 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 01052018 | 01062018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180104117 | S22080G | Wedge comprsn fx T11-T12 vertebra, subs for fx w delay heal | ICD10 | 01052018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
