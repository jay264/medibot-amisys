Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_URGEMERG
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
| 04202018 | 2018-04-20T14:01:09+00:00 |  | 000098094-01 | Arlene | Weaver | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 04192018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420066 | R0602 | Shortness of breath | ICD10 | 04272018 | 04192018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04232018 | 2018-04-23T09:40:29+00:00 |  | 000019801-01 | MARILYN | GIBBONEY | MOUNT CARMEL WEST PHYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423092 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04272018 | 04222018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04042018 | 2018-04-04T10:53:26+00:00 |  | 000047645-01 | NORA | KOUGHER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404061 | H8149 | Vertigo of central origin, unspecified ear | ICD10 | 04272018 | 04042018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 03272018 | 2018-03-27T16:01:13+00:00 |  | 000118148-01 | PAMELA | THERRIEN | OSU SURGERY LLC | 909925 | SUSAN | MOFFATT-BRUCE | 1225082167 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04272018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328047 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04272018 | 04132018 | 04232018 | 31622, 32601, 32672 | THORACOSCOPY FOR LVRS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 11, 11, 11 | CPT | C4 |  |  |  | 6.0 |
| 04062018 | 2018-04-06T09:05:38+00:00 |  | 000072046-01 | Sherry | Brown | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04262018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04272018 | 04242018 | 04262018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04092018 | 2018-04-09T15:19:04+00:00 |  | 000105790-01 | James | Herrnstein | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04072018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410040 | J189, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04272018 | 04072018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04162018 | 2018-04-16T16:47:52+00:00 |  | 000090955-01 | Douglas | Mcneil | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04272018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417030 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04272018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T09:10:25+00:00 |  | 000115209-01 | Stephen Douglas | Matson | ADENA MEDICAL GROUP LLC | 906142 | RICHARD D | MIZER | 1811977788 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04182018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419017 | J189 | Pneumonia, unspecified organism | ICD10 | 04272018 | 04182018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192018 | 2018-04-19T15:13:10+00:00 |  | 000081817-01 | Kathy | Rosencrance | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04252018 | 04262018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419067 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 04272018 | 04252018 | 04262018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04252018 | 2018-04-25T07:24:42+00:00 |  | 000069786-01 | NANCY | JONES | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04262018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425027 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T13:04:10+00:00 |  | 000059075-01 | RALPH | HOOVER JR | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04242018 | 04262018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316008 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04272018 | 04242018 | 04262018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04022018 | 2018-04-02T07:35:51+00:00 |  | 000085066-01 | Katherine | Spriggs | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03302018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402037 | E871, J159, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04272018 | 03302018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 04162018 | 2018-04-16T09:16:15+00:00 |  | 000066731-01 | JAMES | MARTIN | OSU INTERNAL MED LLC | 942420 | SEAN T | ANKROM | 1912296815 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04272018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 04142018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416062 | Z515 | Encounter for palliative care | ICD10 | 04272018 | 04142018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04162018 | 2018-04-16T15:13:30+00:00 |  | 000085906-01 | Richard | Uttrich | METROPOLITAN METHODIST HOSPITAL | 936762 |  | METROPOLITAN METHODIST HOSPITAL | 1124074273 | METROPOLITAN METHODIST HOSPITAL | 936762 | 1124074273 | METROPOLITAN METHODIST HOSPITAL | 1124074273 | Inpatient | IP | Concurrent Review | CONC |  | METROPOLITAN METHODIST HOSPITAL | 04272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417006 | I480 | Paroxysmal atrial fibrillation | ICD10 | 04272018 | 04152018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04232018 | 2018-04-23T09:36:57+00:00 |  | 000026994-01 | CAROLE | HILDERBRAND | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423013 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04272018 | 04202018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T09:05:47+00:00 |  | 000030909-01 | NORA | CAUDILL | OSU GENERAL INTL MED LLC | 944690 | KRUTI | PATEL | 1568604924 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423027 | I639 | Cerebral infarction, unspecified | ICD10 | 04272018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T13:19:26+00:00 |  | 000030331-01 | Betty | Ugland | HOSPITALIST MEDICINE PHY | 943800 | GEORGE | SHU | 1306104591 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04272018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04212018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423047 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04272018 | 04212018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T13:13:39+00:00 |  | 000092553-01 | Danny | Dunlavy | APOGEE MED GRP OHIO INC | 928091 | NAWAZ | AHMED | 1154634798 | MERCY MEMORIAL HOSPITAL | 905693 | 1811097223 | MERCY MEMORIAL HOSPITAL | 1811097223 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423051 | R1010, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 04272018 | 04222018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T11:55:49+00:00 |  | 000030303-01 | RONALD | ANNETTS | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 04232018 | 04262018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424080 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T17:34:53+00:00 |  | 000096970-01 | Beverley | Zablocki | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 05012018 | 06012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180427003 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04272018 |  |  | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 03072018 | 2018-03-07T09:58:35+00:00 |  | 000082883-01 | Paul | Sager | OSU HLTH SYSTEM NEUROSUR | 911215 | MILIND | DEOGAONKAR | 1780871327 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309005 | G20 | Parkinson's disease | ICD10 | 04272018 | 04242018 | 04272018 | 61867, 20660, 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T15:18:41+00:00 |  | 000081836-01 | Sheila | Taylor | MARIETTA MEM HSP | 932287 | RICHARD E | HOYT | 1609064617 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 04272018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03282018 | 04272018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327001 | I639 | Cerebral infarction, unspecified | ICD10 | 04272018 | 03282018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 04192018 | 2018-04-19T12:54:56+00:00 |  | 000093851-01 | Helen | Townsend | ALLIANCE PHYSICIANS INC | 944902 | ALYSSA J | GANS | 1962638080 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419042 | I5021, R739 | Hyperglycemia, unspecified | ICD10 | 04272018 | 04182018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04232018 | 2018-04-23T08:54:01+00:00 |  | 000082899-01 | Charlotte | Asbury | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423081 | J101, J441, J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 04272018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T10:48:16+00:00 |  | 000105300-01 | Sarah | Stacy | DAYTON CHEST MEDICINE | 923217 | NAVEENA | SALLAPUDI | 1982709325 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424063 | I4891 | Unspecified atrial fibrillation | ICD10 | 04272018 | 04192018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T11:46:29+00:00 |  | 000104533-01 | Gerald | Ferguson | HARVEY, RUSSELL S | 919952 | RUSSELL S | HARVEY | 1285883934 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424077 | R0902, R197 | Diarrhea, unspecified | ICD10 | 04272018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T16:02:19+00:00 |  | 000018971-01 | WILLIAM | ACKLEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04242018 | 04262018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424099 | R0602 | Shortness of breath | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T18:25:08+00:00 |  | 000054344-01 | GRETA | PETERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425020 | R0609 | Other forms of dyspnea | ICD10 | 04272018 | 04192018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04242018 | 2018-04-24T19:52:09+00:00 |  | 000115067-01 | Darlene | Schaeffer-Bryant | OSU HLTH SYSTEM NEUROSUR | 931930 | SHAHID M | NIMJEE | 1912171620 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04272018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04222018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425024 | I639 | Cerebral infarction, unspecified | ICD10 | 04272018 | 04222018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04252018 | 2018-04-25T09:06:37+00:00 |  | 000035029-01 | PATRICIA | MILLER | LICKING MEM HLTH PROF | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425041 | D649 | Anemia, unspecified | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T14:01:11+00:00 |  | 000096488-01 | Randall | Dunlap | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425065 | I4891 | Unspecified atrial fibrillation | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T15:19:10+00:00 |  | 000075775-01 | Nila | Randall | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04272018 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180426061 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04272018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
