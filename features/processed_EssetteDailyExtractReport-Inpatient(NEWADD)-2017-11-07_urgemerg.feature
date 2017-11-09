Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-07_URGEMERG
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
| 10302017 | 2017-10-30T09:22:34+00:00 | 262394687302 | 000040647-01 | GERALD | GOLDBERG | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10302017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030012 | R410 | Disorientation, unspecified | ICD10 | 11062017 | 10302017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08152017 | 2017-08-15T10:37:46+00:00 |  | 000104218-01 | Gerald | Detty | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815041 | E119, E6601, I10 | Essential (primary) hypertension | ICD10 | 11062017 | 11022017 | 11032017 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:31:14+00:00 | 250612017296 | 000055854-01 | John | Kilpatrick | SOUND PHYSICIANS OF OHI0 | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10232017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023053 | I10, I7100, I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 11072017 | 10232017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10182017 | 2017-10-18T10:04:48+00:00 | 179947837290 | 000083865-01 | Mary | Kinser | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10172017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018022 | K5669 | Other intestinal obstruction | ICD10 | 11072017 | 10172017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 10302017 | 2017-10-30T14:23:55+00:00 |  | 000107738-01 | LORI | CLARK | ALLIANCE PHYSICIANS INC | 942508 | ADAM | BRULE | 1356626238 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031022 | F209 | Schizophrenia, unspecified | ICD10 | 11072017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11072017 | 2017-11-07T08:23:15+00:00 |  | 000019057-01 | GLORIA | LYNCH | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11012017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107005 | R0602 | Shortness of breath | ICD10 | 11072017 | 11012017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11022017 | 2017-11-02T09:34:53+00:00 |  | 000091751-01 | Ronnie | Smith | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102052 | A419 | Sepsis, unspecified organism | ICD10 | 11072017 | 11012017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T08:25:14+00:00 |  | 000054475-01 | Thomas | Keane | SOUND PHYSICIANS OF OHI0 | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103077 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11072017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T13:55:23+00:00 |  | 000030169-01 | RUTH | PORTER | SURG INTERVENTIONS LLC | 937369 | HOWARD L | REEVES | 1639245350 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019074 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 11072017 | 10312017 | 11042017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 11012017 | 2017-11-01T07:56:21+00:00 |  | 000028176-01 | THOMAS | CASTLE | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101006 | E8341, R509, R531 | Weakness | ICD10 | 11072017 | 10302017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11072017 | 2017-11-07T08:44:38+00:00 |  | 000099409-01 | Barbara | Winter | CLERMONT INTERNISTS ASSO | 924626 | MAITHILI S | PATIL | 1942278593 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 11072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11052017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107043 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 11072017 | 11052017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:46:48+00:00 |  | 000098265-01 | Gerda | Rivera | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10222017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023122 | N189, R0902, S728X1A | Oth fracture of right femur, init encntr for closed fracture | ICD10 | 11072017 | 10222017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11052017 | 2017-11-05T13:47:20+00:00 |  | 000020257-01 | Elizabeth | Kivior | MOUNT CARMEL HLTH SYS | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106061 | A419 | Sepsis, unspecified organism | ICD10 | 11072017 | 11032017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11032017 | 2017-11-03T10:52:59+00:00 |  | 000118894-01 | Michael | Hamm | SOUND KENWOOD HSPISTS OF | 928796 | KERRY A | LECKY | 1396952651 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103047 | I82409, J9621, N179, R4182 | Altered mental status, unspecified | ICD10 | 11072017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T11:05:47+00:00 | 177978507306 | 000099438-01 | John | Scott | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102032 | I96 | Gangrene, not elsewhere classified | ICD10 | 11072017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10242017 | 2017-10-24T11:56:07+00:00 |  | 000113582-01 | Lois | Bower | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10232017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024067 | E872, J690, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 11072017 | 10232017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11012017 | 2017-11-01T13:17:22+00:00 |  | 000069785-01 | CYNTHIA | GAVRILL | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101045 | E876, R109, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 11072017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T13:58:31+00:00 |  | 000101669-01 | Debra | Powell | BANDED KILLIFISH INPATIE | 941920 | KAMAL NT | YOAKIM | 1447415641 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101049 | E039, I10, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 11072017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T14:33:44+00:00 |  | 000110788-01 | LELA | REEVES | BANDED KILLIFISH INPATIE | 941920 | KAMAL NT | YOAKIM | 1447415641 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101054 | I10, J45909, S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 11072017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T08:39:10+00:00 |  | 000097212-01 | Myra | Crossley | FCMH MED & SURG ASSOC | 937321 | ROBERT R | PICKERING | 1548209844 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103066 | E875, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11072017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08292017 | 2017-08-29T14:56:35+00:00 |  | 000111186-01 | Linda | Ventresco | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829086 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11072017 | 11062017 | 11072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11072017 | 2017-11-07T14:16:05+00:00 |  | 000015182-01 | EUGENE | WHITE | PREMIER UROLOGY CORP | 935543 | DAVID H | BROWN SR | 1578536181 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11062017 | 11072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107083 | N1339 | Other hydronephrosis | ICD10 | 11072017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10202017 | 2017-10-20T11:56:26+00:00 |  | 000088156-01 | Helen | Haskins | WRIGHT STATE PHYSICIANS | 903649 | AKPOFURE P | EKEH | 1063478022 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020069 | S12100A, S82101A, V4940XA | Driver injured in collision w unsp mv in traf, init | ICD10 | 11072017 | 10192017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11012017 | 2017-11-01T15:28:44+00:00 |  | 000108098-01 | ESTHER | MOYER | INTL MED & GERATRICS CAR | 921436 | KETAN K | PATEL | 1699721050 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101069 | I724 | Aneurysm of artery of lower extremity | ICD10 | 11072017 | 10312017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T08:33:00+00:00 |  | 000110827-01 | Tammy | Gillette | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 11072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103051 | E662, I509, I517 | Cardiomegaly | ICD10 | 11072017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10042017 | 2017-10-04T09:07:22+00:00 |  | 000110832-01 | Robert | Ramsey | KETTERING SURGICAL ASSOC | 920966 | GIRISH B | NAGESETTY | 1073506606 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004028 | I739, I743 | Embolism and thrombosis of arteries of the lower extremities | ICD10 | 11072017 | 10312017 | 11042017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 3.0 |
| 11072017 | 2017-11-07T09:16:25+00:00 |  | 000023537-01 | MARJORIE | GIBSON | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10292017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107093 | E860 | Dehydration | ICD10 | 11072017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10272017 | 2017-10-27T08:34:43+00:00 |  | 000085023-01 | Juanita | Dean | BLUERIDGE VISTA HEALTH A | 949112 |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | BLUERIDGE VISTA HEALTH A | 949112 | 1053784454 | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 11072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027020 | F0631 | Mood disorder due to known physiol cond w depressv features | ICD10 | 11072017 | 10262017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 10272017 | 2017-10-27T12:14:02+00:00 |  | 000004066-01 | ROBERT | BOYD | CENTRAL OH HSPISTS INC | 914259 | JAMES W | DEVORE JR | 1033308333 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027050 | I639 | Cerebral infarction, unspecified | ICD10 | 11072017 | 10262017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T09:39:37+00:00 |  | 000096342-01 | Jannie | Byndon | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10222017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023085 | R1084, R112 | Nausea with vomiting, unspecified | ICD10 | 11072017 | 10222017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11062017 | 2017-11-06T10:39:19+00:00 | 251202977309 | 000113175-01 | Patricia | Wycuff | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106041 | K8050, R109 | Unspecified abdominal pain | ICD10 | 11072017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T11:12:58+00:00 |  | 000077898-01 | Willard | Hatfield | CENTRAL OH HSPISTS INC | 928694 | IRANI | SAMARANAYAKE | 1164666418 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11072017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10292017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031073 | R2990 | Unspecified symptoms and signs involving the nervous system | ICD10 | 11072017 | 10292017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11072017 | 2017-11-07T08:30:26+00:00 |  | 000104851-01 | JANET | NAGY | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11072017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11062017 | 11072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107006 | N393, N8112, N812, N8182 | Incompetence or weakening of pubocervical tissue | ICD10 | 11072017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11072017 | 2017-11-07T08:39:22+00:00 |  | 000053881-01 | WILLIAM | HENRY | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11072017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11062017 | 11072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107008 | C20 | Malignant neoplasm of rectum | ICD10 | 11072017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
