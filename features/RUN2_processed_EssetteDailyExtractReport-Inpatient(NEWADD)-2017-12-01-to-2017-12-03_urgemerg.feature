Feature: RUN2 Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-01-to-2017-12-03_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-12-01-to-2017-12-03_URGEMERG
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
| 09252017 | 2017-09-25T19:24:25+00:00 |  | 000083663-01 | James | Cummings | KINDRED HOSPITAL | 913297 |  | KINDRED HOSPITAL | 1447320676 | KINDRED HOSPITAL | 913297 | 1447320676 | KINDRED HOSPITAL | 1447320676 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | KINDRED HOSPITAL | 12012017 | Denied | MediGold Classic Preferred | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 12012017 | 12022017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170926007 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 12012017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:25:21+00:00 | 025982690-7325 | 000100503-01 | Edward | Meckulch | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11292017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103068 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12012017 | 11292017 | 11302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T09:43:19+00:00 |  | 000076987-01 | Nancy | Wagner | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11302017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106002 | I739 | Peripheral vascular disease, unspecified | ICD10 | 12012017 | 11302017 | 12012017 | 37221, 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11062017 | 2017-11-06T15:19:14+00:00 |  | 000081297-01 | Tonda | Coontz | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11302017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106113 | N8502 | Endometrial intraepithelial neoplasia [EIN] | ICD10 | 12012017 | 11302017 | 12012017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11082017 | 2017-11-08T14:23:39+00:00 | 026748121-7319 | 000106697-01 | Shirley | Gibson | RIVER VALLEY ORTHOS & SP | 909075 | DAVID M | VAZIRI | 1144211137 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 12012017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 11292017 | 11302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108058 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12012017 | 11292017 | 11302017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11082017 | 2017-11-08T14:47:55+00:00 | 017721340-7270 | 000072152-01 | Frederick | Swyers | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11302017 | 12012017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108060 | C61 | Malignant neoplasm of prostate | ICD10 | 12012017 | 11302017 | 12012017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11152017 | 2017-11-15T10:55:51+00:00 |  | 000098500-01 | Domenico | Donnini | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115090 | C182 | Malignant neoplasm of ascending colon | ICD10 | 12012017 | 11282017 | 12012017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11152017 | 2017-11-15T14:11:00+00:00 |  | 000104968-01 | Marilyn | Griffith | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116032 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 12022017 | 12012017 | 12022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11162017 | 2017-11-16T08:48:49+00:00 |  | 000095111-01 | James | Hammerly | SOUND PHYSICIANS OF OHI0 | 948123 | AHMED N | HADID | 1205268505 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 12012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11152017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116052 | F1010 | Alcohol abuse, uncomplicated | ICD10 | 12012017 | 11152017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11162017 | 2017-11-16T07:35:41+00:00 |  | 000032610-01 | SHIRLEY | TACKETT | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11302017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11282017 | 11302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116068 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11302017 | 11282017 | 11302017 | 11981 | INSERT DRUG IMPLANT DEVICE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11212017 | 2017-11-21T10:57:40+00:00 | 259150837324 | 000012284-01 | BARBARA | BAUR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121048 | M545 | Low back pain | ICD10 | 12012017 | 11212017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11272017 | 2017-11-27T09:08:22+00:00 | 250118517327 | 000007339-01 | WILLIAM | BROOKS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11232017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 12012017 | 11232017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11272017 | 2017-11-27T09:38:06+00:00 | 250437687329 | 000055880-01 | Delores | Grossman | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11252017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127031 | A419 | Sepsis, unspecified organism | ICD10 | 12012017 | 11252017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11272017 | 2017-11-27T10:15:57+00:00 | 025004948-7330 | 000043575-01 | MARILYN | BASTIAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11252017 | 12012017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127049 | J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 12012017 | 11252017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11272017 | 2017-11-27T10:28:58+00:00 | 251100807330 | 000098482-01 | Manifred | Smoot | CANYON MEDICAL CENTER | 936799 | MARK | HACKMAN | 1740230739 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11262017 | 12012017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127058 | R0602 | Shortness of breath | ICD10 | 12012017 | 11262017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T14:59:57+00:00 |  | 000046921-01 | BETTY | RANDALL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11272017 | 12012017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127122 | A419 | Sepsis, unspecified organism | ICD10 | 12012017 | 11272017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T07:24:07+00:00 |  | 000031073-01 | RODERICK | SHASTEEN | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11282017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129005 | R3912 | Poor urinary stream | ICD10 | 12012017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T15:05:27+00:00 |  | 000046875-01 | RONALD | SEYMOUR | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 12012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129041 | A419, J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12012017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11292017 | 2017-11-29T10:31:31+00:00 | 251077027332 | 000071954-01 | Carole | Solomon | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129042 | R4182 | Altered mental status, unspecified | ICD10 | 12012017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T11:33:54+00:00 |  | 000110178-01 | Beatrice | Reid | SOUND INPATIENT PHYS OF | 925203 | ASAD S | ALI | 1053386938 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 12012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11272017 | 11282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129053 | I4891, I509 | Heart failure, unspecified | ICD10 | 12012017 | 11272017 | 11282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11302017 | 2017-11-30T10:00:55+00:00 | 255286707333 | 000080727-01 | Robert | Schwartz | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11292017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130025 | K819 | Cholecystitis, unspecified | ICD10 | 12012017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11302017 | 2017-11-30T10:13:26+00:00 | 251393227333 | 000045033-01 | DELBERT | BENNETT SR | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11292017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130032 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 12032017 | 11292017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11302017 | 2017-11-30T11:53:41+00:00 |  | 000072066-01 | Edward | Vingle | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11292017 | 12032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130066 | R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 12032017 | 11292017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11272017 | 2017-11-27T14:38:11+00:00 | 264120687330 | 000082800-01 | Steven | Mcdaniel | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1831172329 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11262017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127116 | M62262 | Nontraumatic ischemic infarction of muscle, left lower leg | ICD10 | 12012017 | 11262017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T18:48:06+00:00 |  | 000046920-01 | WILLIAM | RANDALL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11262017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127157 | N390 | Urinary tract infection, site not specified | ICD10 | 11302017 | 11262017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T10:08:11+00:00 | 251517827332 | 000099696-01 | Gary | Chandler | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 11282017 | 12012017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129029 | R079 | Chest pain, unspecified | ICD10 | 12012017 | 11282017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T08:48:49+00:00 |  | 000078239-01 | Ruth | Johnson | ZANESVILLE XPRESS ORTHO | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 12012017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 11292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019076 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12012017 | 11282017 | 11292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11092017 | 2017-11-09T09:54:25+00:00 |  | 000045018-01 | ANGELO | AGGANIS | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11282017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109059 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12012017 | 11282017 | 12012017 | 34802, 34812, 34825, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 11132017 | 2017-11-13T13:31:56+00:00 |  | 000097592-01 | Delores | Diamond | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12012017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113087 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 12022017 | 12012017 | 12022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11272017 | 2017-11-27T11:35:34+00:00 | 251163547330 | 000094815-01 | Thomas | Thomas | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11262017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127079 | Q279 | Congenital malformation of peripheral vascular system, unsp | ICD10 | 12012017 | 11262017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T08:34:49+00:00 |  | 000112008-01 | Joyce | Kelly | AJAZ UMERANI MD INC | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11242017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127133 | J441, R0689 | Other abnormalities of breathing | ICD10 | 12012017 | 11242017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12012017 | 2017-12-01T13:48:32+00:00 |  | 000107091-01 | Frank | Faber Sr | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 12012017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 12012017 | 12022017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171201052 | G8190, I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 12012017 |  |  | 76706 | US ABDL AORTA SCREEN AAA | CPT | 0 | 1 |  | 0 | CPT | C4 |  |  | No child records to display. |  |
| 11252017 | 2017-11-25T16:56:39+00:00 |  | 000003801-01 | CLARE | GOULET | CAPITAL CITY INTL MED IN | 934759 | AGATHA S | BEYNEN | 1972571057 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11242017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125011 | I4891 | Unspecified atrial fibrillation | ICD10 | 11302017 | 11242017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11272017 | 2017-11-27T10:55:20+00:00 |  | 000076669-01 | Homer | Hart | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 12012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11272017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128039 | R319 | Hematuria, unspecified | ICD10 | 12012017 | 11272017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11282017 | 2017-11-28T14:00:00+00:00 | 252809337327 | 000025186-01 | RUTH | CARTER | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11232017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128061 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 12012017 | 11232017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11292017 | 2017-11-29T10:20:09+00:00 | 252303497332 | 000022166-01 | SHARON | SIZEMORE | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11282017 | 12022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129034 | M5382 | Other specified dorsopathies, cervical region | ICD10 | 12032017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11292017 | 2017-11-29T10:26:01+00:00 | 170601887332 | 000113921-01 | Bonnie | Pace | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12022017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11282017 | 12022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129037 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 12022017 | 11282017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11282017 | 2017-11-28T12:17:13+00:00 |  | 000096151-01 | DANIEL | SMITH | OHIOHEALTH PHYS GRP | 927890 | MICHAEL | JOLLY | 1639295462 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 12012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11252017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171129057 | M79605 | Pain in left leg | ICD10 | 12012017 | 11252017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11302017 | 2017-11-30T09:08:46+00:00 | 251782657333 | 000102942-01 | Wanda | Hatfield | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11292017 | 12012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130014 | R55 | Syncope and collapse | ICD10 | 12012017 | 11292017 | 12012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11302017 | 2017-11-30T15:42:47+00:00 | 255315387334 | 000103042-01 | Michael | Privett | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11302017 | 12022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130104 | J159 | Unspecified bacterial pneumonia | ICD10 | 12032017 | 11302017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09152017 | 2017-09-15T08:52:55+00:00 | 025488927-7258 | 000055327-01 | WALTER | DIXON | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918021 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 11302017 | 11032017 | 11302017 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 28 | CPT | C4 |  |  |  | 27.0 |
| 11012017 | 2017-11-01T09:04:08+00:00 |  | 000082386-01 | William | Stewart | CLEVELAND CLINIC FNDN | 911184 | VIDYASAGAR | KALAHASTI | 1538256318 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101004 | I330, I5189, R7881 | Bacteremia | ICD10 | 12012017 | 11012017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 11022017 | 2017-11-02T13:39:44+00:00 |  | 000116016-01 | JAMES | SOUTH | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11282017 | 12012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103101 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 12022017 | 11282017 | 12012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11152017 | 2017-11-15T09:54:22+00:00 | 254160297318 | 000110221-01 | Marion | Leatherwood | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 12012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 11302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115024 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 12012017 | 11142017 | 11302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 11222017 | 2017-11-22T09:06:49+00:00 |  | 000064774-01 | WARD | BARTRUFF | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 12012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122031 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 12012017 | 11212017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11282017 | 2017-11-28T09:59:41+00:00 | 265459987331 | 000038197-01 | BONNIE | HOUSEHOLDER | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11272017 | 12032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171128012 | R079 | Chest pain, unspecified | ICD10 | 12032017 | 11272017 | 12032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12022017 | 2017-12-02T15:57:55+00:00 |  | 000059842-01 | STEPHEN | HOYT | CAPITAL CITY NEUROSURG | 907620 | KELLY J | KIEHM | 1588654370 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 12022017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 12012017 | 12022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171202004 | M4806 | Spinal stenosis, lumbar region | ICD10 | 12022017 | 12012017 | 12022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
