Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-03_URGEMERG
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
| 03302018 | 2018-03-30T16:02:15+00:00 |  | 000000038-01 | GERALD | COE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04022018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03292018 | 03312018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402009 | J159 | Unspecified bacterial pneumonia | ICD10 | 04022018 | 03292018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T09:06:12+00:00 |  | 000120526-01 | Jimmy | Walker | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02232018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227022 | I259, M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 04032018 | 02232018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 34.0 |
| 03282018 | 2018-03-28T07:22:04+00:00 |  | 000092544-01 | Roland | Wildman Jr | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328088 | E876, N179, N200 | Calculus of kidney | ICD10 | 04032018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03272018 | 2018-03-27T15:21:19+00:00 |  | 000037113-01 | Irene | Marcum | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327101 | J101, R0602 | Shortness of breath | ICD10 | 04032018 | 03262018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02122018 | 2018-02-12T15:53:57+00:00 |  | 000044062-01 | Gloria | Dragoo | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212125 | M488X9, M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 04032018 | 03292018 | 04022018 | 63047, 63048, 22633, 22634, 22853, 22842, 20936, 20930, 22830, 61783, 22852 | REMOVAL POSTERIOR SEGMENTAL INSTRUMENTATION | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 2, 3, 1, 1, 1, 1, 1, 1 | , , , , , , , , , ,  | 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 03132018 | 2018-03-13T14:16:48+00:00 |  | 000025272-01 | LESTER | SOUDER | SOUND INPATIENT PHYS OF | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313082 | R0602, R079, R110, R197, R531 | Weakness | ICD10 | 04032018 | 03122018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 03142018 | 2018-03-14T09:32:08+00:00 |  | 000083527-01 | Tim | Merkle | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314021 | N321, R319 | Hematuria, unspecified | ICD10 | 04032018 | 03122018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T08:58:07+00:00 |  | 000099585-01 | Donna | Copenheaver | ORTHO INSTITUTE OF DAYTO | 902051 | RICHARD W | FORSTER | 1518962141 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316033 | M1612, M87051 | Idiopathic aseptic necrosis of right femur | ICD10 | 04032018 | 03282018 | 03302018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02192018 | 2018-02-19T10:26:53+00:00 |  | 000012700-01 | BRENDA | BELL | CLEVELAND CLINIC FNDN | 930630 | SIVA | RAJA | 1548317522 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226053 | K220 | Achalasia of cardia | ICD10 | 04032018 | 02282018 | 03312018 | 43279, 43327 | ESOPH FUNDOPLASTY LAP | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  | 9.0 |
| 03122018 | 2018-03-12T16:06:05+00:00 |  | 000090618-01 | Velda | Brannick | KHN IP MED | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03092018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313029 | E876, J90 | Pleural effusion, not elsewhere classified | ICD10 | 04032018 | 03092018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03182018 | 2018-03-18T17:28:50+00:00 |  | 000015235-01 | GERTRUDE | RASOR | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319040 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 04032018 | 03172018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 03202018 | 2018-03-20T14:55:27+00:00 |  | 000108047-01 | Charles | Heldman | MARIETTA MEM HSP | 923162 | HITNEBAGILU L | KRUPADEV | 1710900790 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03192018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321007 | I4891, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 04032018 | 03192018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03282018 | 2018-03-28T13:00:58+00:00 |  | 000115620-01 | Jenitta | Grim | SOUND INPATIENT PHYS OF | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329034 | C3490, J189, J90 | Pleural effusion, not elsewhere classified | ICD10 | 04032018 | 03272018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03062018 | 2018-03-06T09:07:01+00:00 |  | 000083465-01 | Judy | Tarrence | S DAYTON ACUTE CARE CNSL | 909767 | ROBERT L | BARKER | 1114929320 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03052018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306063 | E871, E875 | Hyperkalemia | ICD10 | 04032018 | 03052018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 03132018 | 2018-03-13T13:32:27+00:00 |  | 000076381-01 | Larry | Adams | ALLIANCE PHYSICIANS INC | 916581 | VIJAI S | TIVAKARAN | 1841269271 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313073 | I5043, I509, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 04032018 | 03122018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 03152018 | 2018-03-15T14:06:25+00:00 |  | 000081836-01 | Sheila | Taylor | MARIETTA MEM HSP | 906929 | FREDERIC A | HUMPHREY | 1366438848 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03142018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315060 | I639, R4182 | Altered mental status, unspecified | ICD10 | 04032018 | 03142018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03162018 | 2018-03-16T08:02:57+00:00 |  | 000068314-01 | MICHAEL | BURTON | DAYTON CHEST MEDICINE | 923217 | NAVEENA | SALLAPUDI | 1982709325 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316016 | R0602, R0789 | Other chest pain | ICD10 | 04032018 | 03152018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03162018 | 2018-03-16T13:42:02+00:00 |  | 000112618-01 | Kenneth | Jackson | ALLIANCE PHYSICIANS INC | 903055 | PETER M | LEWIS | 1700869161 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316066 | I471 | Supraventricular tachycardia | ICD10 | 04032018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T11:51:01+00:00 |  | 000061057-01 | RUTH | WARTH | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319088 | I509, J159, I219 | I219 | ICD10 | 04032018 | 03162018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T15:00:52+00:00 |  | 000102461-01 | Loretta | Rusnak | ALLIANCE PHYSICIANS INC | 924143 | MATTHEW D | HESS | 1407056518 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320085 | M1611, M25551 | Pain in right hip | ICD10 | 04032018 | 03272018 | 03292018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03232018 | 2018-03-23T09:26:57+00:00 |  | 000049848-01 | BEVERLY | BOBO | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323011 | I2510, I5033, R0600 | Dyspnea, unspecified | ICD10 | 04032018 | 03222018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03262018 | 2018-03-26T09:11:59+00:00 |  | 000119356-01 | Lenora | Castle | MIAMI VALLEY HSPISTS GRP | 932836 | JOCELYN B | WATSON | 1881866887 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326034 | J159 | Unspecified bacterial pneumonia | ICD10 | 04032018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:45:00+00:00 |  | 000034686-01 | GEORGIA | HUFFER | FAIRFIELD HLTHCARE PROFS | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 04012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326082 | J189, J441, J9601, N179, R000, Y95 | NOSOCOMIAL CONDITION | ICD10 | 04032018 | 03242018 | 04012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03262018 | 2018-03-26T11:35:15+00:00 |  | 000108531-01 | Norma | Flack | KNOX COMMUNITY HOSPITAL | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327011 | S4291XA, S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 04032018 | 03242018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03262018 | 2018-03-26T13:29:09+00:00 |  | 000077539-01 | Earl | Hutchinson | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03252018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327031 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 04032018 | 03252018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03302018 | 2018-03-30T10:25:34+00:00 |  | 000076459-01 | Timothy | Kelley | OHIOHEALTH PHYS GRP | 949035 | KEVIN L | STIVER | 1356502280 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330076 | R079 | Chest pain, unspecified | ICD10 | 04032018 | 03292018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03312018 | 2018-03-31T13:33:12+00:00 |  | 000098663-01 | Barrett | Allen | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402011 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04032018 | 03302018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04012018 | 2018-04-01T12:43:26+00:00 |  | 000044043-01 | DONALD | KINSER | OHIOHEALTH PHYS GRP | 927071 | MAYSA | EL-SAYYID | 1962638122 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Mail | Inpatient | Inpatient | 03302018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402016 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04032018 | 03302018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03312018 | 2018-03-31T11:45:56+00:00 |  | 000032165-01 | RUSSELL | WARD | MOUNT CARMEL HLTH SYS | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03312018 | 04022018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402018 | I4891 | Unspecified atrial fibrillation | ICD10 | 04032018 | 03312018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04012018 | 2018-04-01T16:27:27+00:00 |  | 000023961-01 | ELIZABETH | KENNEDY | MOUNT CARMEL HLTH PRVDRS | 952669 | JIANQING | LI | 1487856217 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402034 | I4891, I495, I498 | Other specified cardiac arrhythmias | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02282018 | 2018-02-28T15:28:29+00:00 |  | 000087933-01 | Diane | Bereczky | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Post-Service | POST |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04032018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03282018 | 03302018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | A180228082 | T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 04032018 | 03282018 | 03302018 | 27134 | REVSN TOT HIP ARTHPLSTY/BOTH COMNTS | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03122018 | 2018-03-12T10:11:16+00:00 |  | 000076024-01 | Laurinda | Crouse | LICKING MEM HLTH PROF | 903650 | TODD F | LEMMON | 1730187501 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312025 | N8502 | Endometrial intraepithelial neoplasia [EIN] | ICD10 | 04032018 | 03202018 | 03222018 | 58150 | TOTAL HYST W/WO RMVL TUBES OR OVARY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03152018 | 2018-03-15T12:02:45+00:00 |  | 000079036-01 | Lawrence | Habenicht | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315034 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03142018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03152018 | 2018-03-15T12:07:02+00:00 |  | 000120999-01 | JOANNE | TOLER | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04032018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315035 | K430 | Incisional hernia with obstruction, without gangrene | ICD10 | 04032018 | 03142018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03152018 | 2018-03-15T12:10:59+00:00 |  | 000072375-01 | Robert | Hankey Jr | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315037 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03142018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 03212018 | 2018-03-21T10:23:13+00:00 |  | 000094033-01 | Constance | Rader | MARIETTA HLTH CARE PHYS | 933483 | HAYDEN H | TRAN | 1124319272 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321047 | A419 | Sepsis, unspecified organism | ICD10 | 04032018 | 03202018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03212018 | 2018-03-21T14:26:51+00:00 |  | 000114071-01 | Imelda | Brown | GRANDVIEW HOSPITAL & SOU | 909572 | TIMOTHY W | HARMAN | 1093816894 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321084 | M009, R2231 | Localized swelling, mass and lump, right upper limb | ICD10 | 04032018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T13:32:07+00:00 |  | 000100362-01 | George | Maurer | SAWH, SHAILENDRA | 901325 | SHAILENDRA | SAWH | 1518952605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322057 | J189, R0902 | Hypoxemia | ICD10 | 04032018 | 03212018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03222018 | 2018-03-22T14:30:21+00:00 |  | 000086903-01 | Leonard | Wakeman | STEPHEN D HEISE MD & ASS | 923513 |  | STEPHEN D HEISE MD & ASSOCIATES INC | 1396835708 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04032018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03242018 | 04022018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322059 | S7223XA | Displaced subtrochanteric fracture of unsp femur, init | ICD10 | 04032018 | 03242018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03282018 | 2018-03-28T14:45:14+00:00 |  | 000073888-01 | Barbara | Spicer | LANCASTER SURGICAL ASSOC | 936065 | DAVID M | HASL | 1710978424 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04032018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328072 | K5660 | Unspecified intestinal obstruction | ICD10 | 04032018 | 03262018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03272018 | 2018-03-27T16:08:16+00:00 |  | 000109454-01 | Michael | Myers | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03262018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328080 | S32049S | Unspecified fracture of fourth lumbar vertebra, sequela | ICD10 | 04032018 | 03262018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03282018 | 2018-03-28T14:11:30+00:00 |  | 000083071-01 | Debbie | Hutchinson | MARIETTA HLTH CARE PHYS | 927938 | TUAN C | NGUYEN | 1043464183 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04032018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03272018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329039 | A419, K559, K659, N12, R109 | Unspecified abdominal pain | ICD10 | 04032018 | 03272018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03282018 | 2018-03-28T15:26:12+00:00 |  | 000108764-01 | Roy | Gurr | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329043 | A419, I38, R531 | Weakness | ICD10 | 04032018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T10:25:54+00:00 |  | 000059419-01 | Marilynne | Mitchell | SOUND INPATIENT PHYS OF | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329065 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03302018 | 2018-03-30T10:57:19+00:00 |  | 000060251-01 | GARNET | ESTEPP | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03292018 | 04022018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330021 | I509 | Heart failure, unspecified | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03302018 | 2018-03-30T09:39:58+00:00 |  | 000064498-01 | JOHN | LOCKE | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03292018 | 04022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330061 | M71122 | Other infective bursitis, left elbow | ICD10 | 04032018 | 03292018 | 04022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04022018 | 2018-04-02T16:44:52+00:00 |  | 000027870-01 | PHYLLIS | BROWN | ELIO VENTRESCA MD INC | 913771 | ELIO | VENTRESCA | 1811904139 | SELECT SPECIALTY HOSPITA | 906189 | 1285785535 | SELECT SPECIALTY HOSPITAL COLUMBUS E | 1285785535 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | SELECT SPECIALTY HOSPITAL COLUMBUS E | 04032018 | Denied | MediGold Classic Preferred | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 04032018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180403024 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04032018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04022018 | 2018-04-02T18:20:56+00:00 |  | 000092528-01 | Michael | Irish | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04032018 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 03272018 | 03312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403030 | M48062 | M48062 | ICD10 | 04032018 | 03272018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
