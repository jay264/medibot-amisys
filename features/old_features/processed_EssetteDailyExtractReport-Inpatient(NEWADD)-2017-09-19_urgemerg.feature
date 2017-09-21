Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-19_URGEMERG
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
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 09152017 | 2017-09-15T08:36:40+00:00 | 257520737257 | 000034411-01 | HAROLD | BALL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915011 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 09192017 | 09142017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09132017 | 2017-09-13T10:51:00+00:00 |  | 000102492-01 | Patricia | Kyrlach | MERCY HEALTH PHYSICIANS | 921220 | JEFFREY R | WELSHHANS | 1851425938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09122017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914053 | K4130 | Unil femoral hernia, w obst, w/o gangrene, not spcf as recur | ICD10 | 09192017 | 09122017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09122017 | 2017-09-12T13:24:41+00:00 |  | 000102049-01 | Georgean | Johnson | SOUND PHYSICIANS OF OHI0 | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914007 | R55, T829XXA | Unsp comp of cardiac and vascular prosth dev/grft, init | ICD10 | 09192017 | 09112017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T12:14:45+00:00 |  | 000085831-01 | Virginia | Bowman | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818027 | J860 | Pyothorax with fistula | ICD10 | 09192017 | 08302017 | 09182017 | 31622, 32505, 43235 | ENDOSCOPY UPPER GI | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 20, 20, 20 | CPT | C4 |  |  |  | 19.0 |
| 09072017 | 2017-09-07T08:58:03+00:00 |  | 000109383-01 | Larry | Millhouse Jr | THE READING HSP & MED CT | 933943 |  | THE READING HOSPITAL & MEDICAL CTR | 1669530069 | THE READING HSP & MED CT | 933943 | 1669530069 | THE READING HOSPITAL & MEDICAL CTR | 1669530069 | Inpatient | IP | Concurrent Review | CONC |  | THE READING HOSPITAL & MEDICAL CTR | 09192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907080 | T8130XA | Disruption of wound, unspecified, initial encounter | ICD10 | 09192017 | 08302017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09132017 | 2017-09-13T09:19:39+00:00 | 250649157255 | 000009904-01 | JAMES | LAW | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09122017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913009 | M79672 | Pain in left foot | ICD10 | 09192017 | 09122017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09012017 | 2017-09-01T10:49:19+00:00 |  | 000044201-01 | FRANCES | HOVATTER | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901033 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 09192017 | 09112017 | 09152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 09142017 | 2017-09-14T10:15:32+00:00 | 250903757256 | 000000994-01 | ADAM | PRICE | SOUND PHYSICIANS OF OHI0 | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914034 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 09192017 | 09132017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09082017 | 2017-09-08T14:52:45+00:00 |  | 000077228-01 | Glenn | Pennington | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908074 | I200 | Unstable angina | ICD10 | 09192017 | 09112017 | 09182017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 09072017 | 2017-09-07T15:10:10+00:00 |  | 000085834-01 | Gerald | Leupen | MERCY HEALTH PHYSICIANS | 920861 | ARTHUR | LEE | 1093713034 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908038 | Z96652, T8459XA | Infect/inflm reaction due to oth internal joint prosth, init | ICD10 | 09192017 | 09132017 | 09152017 | 27301, 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 2.0 |
| 09152017 | 2017-09-15T09:17:10+00:00 | 250946867257 | 000010639-01 | PATRICK | ROSE | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915019 | K5660 | Unspecified intestinal obstruction | ICD10 | 09192017 | 09142017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09172017 | 2017-09-17T12:07:00+00:00 |  | 000022473-01 | BERNARD | BALTZER | DELPHI INTENSIVISTS CNSL | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918016 | I469 | Cardiac arrest, cause unspecified | ICD10 | 09192017 | 09152017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052017 | 2017-04-05T15:29:23+00:00 |  | 000115915-01 | VALLA | ODELL | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09192017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170405059 | J189, J9601, R569 | Unspecified convulsions | ICD10 | 09192017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03022017 | 2017-03-02T15:37:11+00:00 |  | 000084273-01 | Mary | Bohlander | THE OH STATE UNIVERSITY HSP REHAB | 936564 |  | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP REHAB | 09192017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170302091 | C50919, C7951, G9520 | Unspecified cord compression | ICD10 | 09192017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09132017 | 2017-09-13T12:05:49+00:00 |  | 000091945-01 | Rita | Miller | SOUND KENWOOD HSPISTS OF | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914070 | D649, I4891, R0600, R0689, R7989, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 09192017 | 09122017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09142017 | 2017-09-14T16:42:36+00:00 |  | 000109830-01 | Jeff | Monahan | COPC CENTRAL OHIO PRIMAR | 901084 | RICHARD L | GUMMER II | 1104809771 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09192017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09132017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915040 | N179 | Acute kidney failure, unspecified | ICD10 | 09192017 | 09132017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T10:34:19+00:00 |  | 000104440-01 | DORIS | DAWSON | ALLIANCE PHYSICIANS INC | 922911 | DOUGLAS C | GULA | 1326091687 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 09192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807048 | Z96651 | Presence of right artificial knee joint | ICD10 | 09192017 | 09122017 | 09152017 | 27486, 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 09112017 | 2017-09-11T10:57:38+00:00 |  | 000081066-01 | Charles | Buck | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911126 | J189 | Pneumonia, unspecified organism | ICD10 | 09192017 | 09082017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08212017 | 2017-08-21T10:33:04+00:00 | 252325507232 | 000098188-01 | Gerald | Stuller | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08202017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821047 | T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 09192017 | 08202017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 08212017 | 2017-08-21T08:40:44+00:00 |  | 000054475-01 | Thomas | Keane | 24 ON PHYSICIANS PC | 936073 | SREEDEVI B | REDDY | 1841399854 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08192017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821062 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09192017 | 08192017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T15:12:23+00:00 |  | 000080862-01 | Donald | Waker | ALLIANCE PHYSICIANS INC | 914727 | GURPAL S | AHLUWALIA | 1740314954 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829097 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09192017 | 09132017 | 09152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09182017 | 2017-09-18T11:36:47+00:00 |  | 000070047-01 | Patricia | Chapman | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919041 | I639 | Cerebral infarction, unspecified | ICD10 | 09192017 | 09152017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T13:26:09+00:00 |  | 000095210-01 | William | Sroufe | OSU SURGERY LLC | 907326 | STEVEN M | STEINBERG | 1932156866 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828099 | Z933 | Colostomy status | ICD10 | 09192017 | 09062017 | 09182017 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 13 | CPT | C4 |  |  |  | 4.0 |
| 09112017 | 2017-09-11T09:14:12+00:00 | 258333927253 | 000072532-01 | DAVID | WARD | EMERGENCY SERVICES INC | 922684 | JOSEPH D | BUSHEK | 1952559486 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09102017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911021 | R079 | Chest pain, unspecified | ICD10 | 09192017 | 09102017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09182017 | 2017-09-18T11:11:50+00:00 | 256140847258 | 000052222-01 | ARTHUR | CRAWFORD | SOUND PHYSICIANS OF OHI0 | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918049 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 09192017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T18:18:01+00:00 |  | 000033474-01 | LLOYD | SHEW | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09182017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918109 | N529 | Male erectile dysfunction, unspecified | ICD10 | 09192017 | 09182017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09152017 | 2017-09-15T08:56:05+00:00 | 259130417257 | 000003696-01 | Linda | Sales | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915012 | D735 | Infarction of spleen | ICD10 | 09192017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07212017 | 2017-07-21T11:20:05+00:00 |  | 000091288-01 | M Jane | Ludman | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170728118932.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721035 | K625, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 09192017 | 07202017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09122017 | 2017-09-12T14:39:13+00:00 |  | 000106574-01 | Violet | Merritt | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914022 | K3580 | Unspecified acute appendicitis | ICD10 | 09192017 | 09112017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09192017 | 2017-09-19T14:04:02+00:00 |  | 000097787-01 | Patricia | Snyder | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Essential Care | Reports | ACO - Cardiology | Inpatient | 09172017 | 09192017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919085 | R0789 | Other chest pain | ICD10 | 09192017 | 09172017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09112017 | 2017-09-11T16:29:54+00:00 |  | 000104722-01 | Eugene | Nance | APOGEE MED GRP OHIO INC | 944990 | DIEGO G | MATOVELLE | 1417260811 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09082017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912073 | N19 | Unspecified kidney failure | ICD10 | 09192017 | 09082017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09112017 | 2017-09-11T08:17:21+00:00 |  | 000077438-01 | Carol | Hatfield | MERCY HEALTH PHYSICIANS | 921752 | JAMES E | FITZPATRICK | 1063459246 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09192017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911078 | R52 | Pain, unspecified | ICD10 | 09192017 | 09072017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09132017 | 2017-09-13T09:14:15+00:00 | 259970547256 | 000078139-01 | Carol | Conrad | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09132017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913007 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 09192017 | 09132017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09142017 | 2017-09-14T12:55:59+00:00 |  | 000052175-01 | JOHN | MOATS | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914107 | K5660 | Unspecified intestinal obstruction | ICD10 | 09192017 | 09152017 | 09192017 | 49320 | DIAG LAPARO SEPARATE PROC | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 09142017 | 2017-09-14T08:42:54+00:00 |  | 000097943-01 | Rita | Hampton | ONCOLOGY HEMATOLOGY CARE | 920870 | KURT P | LEUENBERGER | 1194765800 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09192017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09132017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914096 | D696, J189 | Pneumonia, unspecified organism | ICD10 | 09192017 | 09132017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09072017 | 2017-09-07T09:47:12+00:00 |  | 000049571-01 | MARGARET | STEINMETZ | ORTHO TRAUMA SRVS LTD | 909718 | KEVIN J | PUGH | 1043204704 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09072017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907055 | S53124A | Posterior dislocation of right ulnohumeral joint, init | ICD10 | 09192017 | 09072017 | 09122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09152017 | 2017-09-15T09:07:12+00:00 | 250553547257 | 000045921-01 | NANCY | HERRON | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915016 | J159 | Unspecified bacterial pneumonia | ICD10 | 09192017 | 09142017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08212017 | 2017-08-21T11:16:27+00:00 |  | 000086140-01 | Mildred | Randolph | OHIOHEALTH PHYS GRP | 910645 | KAILASH K | NARAYAN | 1932214707 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09192017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08192017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821079 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09192017 | 08192017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 08212017 | 2017-08-21T11:18:00+00:00 |  | 000083498-01 | Judy | Mcknight | COPC CENTRAL OHIO PRIMAR | 908372 | RUPENKUMAR R | PATEL | 1689613366 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09192017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08202017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821074 | J939 | Pneumothorax, unspecified | ICD10 | 09192017 | 08202017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 09182017 | 2017-09-18T12:02:54+00:00 |  | 000025996-01 | SUE | RYAN | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09122017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918063 | S12101A, S22009A, S2220XA, S32001A | Stable burst fracture of unsp lumbar vertebra, init | ICD10 | 09192017 | 09122017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09192017 | 2017-09-19T11:25:09+00:00 | 251858337261 | 000034098-01 | SYLVIA | ISAACS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09192017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 09182017 | 09192017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919059 | I4891 | Unspecified atrial fibrillation | ICD10 | 09192017 | 09182017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
