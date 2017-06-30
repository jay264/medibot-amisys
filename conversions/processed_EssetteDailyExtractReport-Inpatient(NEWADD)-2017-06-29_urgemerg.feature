Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-29_URGEMERG
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
| 05022017 | 2017-05-02T08:12:00+00:00 |  | 000054640-01 | GLEN | THIVENER | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 05012017 | 05032017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502005 | I4891 | Unspecified atrial fibrillation | ICD10 | 06292017 | 05012017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022017 | 2017-05-02T12:41:23+00:00 |  | 000081831-01 | Terry | Irving | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05182017 | 05192017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  | 170523105291.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502083 | N393 | Stress incontinence (female) (male) | ICD10 | 06292017 | 05182017 | 05192017 | 53440, 52000 | CYSTOURETHOSCOPY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05112017 | 2017-05-11T07:50:21+00:00 | 026348915-7108 | 000068845-01 | DARLENE | WALKER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511079 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06292017 | 06012017 | 06022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05122017 | 2017-05-12T14:56:10+00:00 |  | 000106972-01 | Michael | Cook | MOUNT CARMEL HLTH PRVDRS | 906705 | FAREED R | SHAIKH | 1609990779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 05112017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512081 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06292017 | 05112017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 05242017 | 2017-05-24T13:03:26+00:00 | 025638253-7144 | 000009699-01 | HARRY | MILLER | MOUNT CARMEL HLTH PRVDRS | 935259 | HYUNG S | KIM | 1891794814 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | EMR | ACO - Atrial Fib | Inpatient | 05242017 | 05272017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524041 | R0602 | Shortness of breath | ICD10 | 06292017 | 05242017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05262017 | 2017-05-26T15:54:24+00:00 |  | 000053241-01 | JOAN | LITTLE | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526081 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06292017 | 06272017 | 06292017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05302017 | 2017-05-30T10:27:37+00:00 | 025705466-7146 | 000013321-01 | RICHARD | LOMBARDI | COPC CENTRAL OHIO PRIMAR | 907773 | BRYAN A | SAULS | 1417173907 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | EMR | ACO - Atrial Fib | Inpatient | 05262017 | 05292017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530054 | I4891 | Unspecified atrial fibrillation | ICD10 | 06292017 | 05262017 | 05292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06012017 | 2017-06-01T16:17:09+00:00 |  | 000076192-01 | Don | Skillman | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602001 | G20, R55, S12301D | Unsp nondisp fx of 4th cervcal vert, 7thD | ICD10 | 06292017 | 06022017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T14:51:06+00:00 |  | 000051779-01 | GORDON | LAMBDIN | S DAYTON ACUTE CARE CNSL | 946251 | SAMEER | QAMAR | 1457514051 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06042017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605120 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 06292017 | 06042017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06092017 | 2017-06-09T15:51:04+00:00 | 025577017-7160 | 000004975-01 | BARBARA | DUNCANSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06092017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609069 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 06292017 | 06092017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 06122017 | 2017-06-12T10:25:47+00:00 | 025662174-7160 | 000081460-01 | William | Goodpaster | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06292017 | 06272017 | 06282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06122017 | 2017-06-12T08:33:55+00:00 |  | 000080400-01 | Robert | Vaughan | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 06292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612092 | J449, J810, R0600, R0689 | Other abnormalities of breathing | ICD10 | 06292017 | 06112017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06132017 | 2017-06-13T10:59:16+00:00 |  | 000093682-01 | Cynthia | Demers | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613046 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 06292017 | 06262017 | 06282017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06142017 | 2017-06-14T11:54:18+00:00 |  | 000044827-01 | CARL | MCELWAIN | OSU SURGERY LLC | 947431 | MARY F | STUEVER | 1285629675 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614041 | K440 | Diaphragmatic hernia with obstruction, without gangrene | ICD10 | 06292017 | 06122017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06152017 | 2017-06-15T08:10:28+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615006 | K5669 | Other intestinal obstruction | ICD10 | 06292017 | 06142017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06202017 | 2017-06-20T09:52:01+00:00 | 250455267170 | 000024843-01 | JANEEN | HUFF | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06192017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620035 | G9340, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06292017 | 06192017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06202017 | 2017-06-20T09:42:27+00:00 |  | 000072212-01 | Patricia | Vanburen | DAYTON COLON & RECTAL CT | 933433 | MICHAEL D | JOHNSON | 1043482797 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06252017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620046 | C20 | Malignant neoplasm of rectum | ICD10 | 06292017 | 06212017 | 06252017 | 44145, 44152 | COLCTMY;TOT/CONT ILEO;ILEOANAL ANAS | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 06202017 | 2017-06-20T12:31:20+00:00 |  | 000109729-01 | Robert | Schofield | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Reports | Secondary Only | Inpatient | 06202017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620073 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06292017 | 06202017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06212017 | 2017-06-21T10:21:00+00:00 |  | 000104807-01 | BENJAMIN | GRIGGS | OHIOHEALTH PHYS GRP | 922935 | MIRYAM L | BURELLI | 1568692564 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06202017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621023 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 06292017 | 06202017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06222017 | 2017-06-22T10:37:43+00:00 | 261438907172 | 000033073-01 | MARGARET | FATHBRUCKNER | HMP OF OHIO PC | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622022 | J159 | Unspecified bacterial pneumonia | ICD10 | 06292017 | 06212017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06222017 | 2017-06-22T11:46:45+00:00 |  | 000007749-01 | BARBARA | PERRY | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622037 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 06292017 | 06212017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06222017 | 2017-06-22T11:25:17+00:00 |  | 000028393-01 | SAMMY | JUNK | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622038 | T8189XD | Oth complications of procedures, NEC, subs | ICD10 | 06292017 | 06262017 | 06292017 | 62142 | REMOVAL OF BONE FLAP OR PROSTHETIC PLATE OF SKULL | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06222017 | 2017-06-22T11:42:05+00:00 |  | 000059599-01 | CONNIE | HINTON | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622042 | J449, R062, R0902 | Hypoxemia | ICD10 | 06292017 | 06212017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06222017 | 2017-06-22T12:32:38+00:00 |  | 000036520-01 | BERNARD | WALLACE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06222017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622043 | R079 | Chest pain, unspecified | ICD10 | 06292017 | 06222017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06222017 | 2017-06-22T13:50:23+00:00 |  | 000088198-01 | Nancy | Neff | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622054 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06292017 | 06282017 | 06292017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T15:38:05+00:00 |  | 000030490-01 | WALTER | JINKS | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622078 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06292017 | 06282017 | 06292017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06232017 | 2017-06-23T09:48:27+00:00 |  | 000093415-01 | Jerry | Scott | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 06242017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623012 | J209 | Acute bronchitis, unspecified | ICD10 | 06292017 | 06242017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06232017 | 2017-06-23T08:36:22+00:00 |  | 000112038-01 | Jane | Thorne | COPC CENTRAL OHIO PRIMAR | 911535 | RAVI | BELLALA | 1649483801 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06202017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623028 | R531 | Weakness | ICD10 | 06292017 | 06202017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06232017 | 2017-06-23T09:26:52+00:00 |  | 000092798-01 | John | Hayes | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623047 | R0602 | Shortness of breath | ICD10 | 06292017 | 06222017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06232017 | 2017-06-23T13:40:10+00:00 | 255251627174 | 000044837-01 | RICHARD | MILLS | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623055 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 06292017 | 06232017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06232017 | 2017-06-23T13:17:36+00:00 |  | 000069899-01 | Russell | Karlen III | OHIOHEALTH PHYS GRP | 909706 | MOSES S | IJAZ | 1558325902 | RIVERSIDE METHODIST HSP | 902257 | 1467484972 | RIVERSIDE METHODIST HSP BEHAVIORAL H | 1225060312 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | RIVERSIDE METHODIST HSP BEHAVIORAL H | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623060 | F322 | Major depressv disord, single epsd, sev w/o psych features | ICD10 | 06292017 | 06232017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06232017 | 2017-06-23T12:29:23+00:00 |  | 000105975-01 | David | Brown | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06232017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626008 | K5660 | Unspecified intestinal obstruction | ICD10 | 06292017 | 06232017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06232017 | 2017-06-23T14:29:15+00:00 |  | 000003408-01 | RUTH | ANDERSON | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626011 | D649, E871, E876 | Hypokalemia | ICD10 | 06292017 | 06222017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06232017 | 2017-06-23T14:21:34+00:00 |  | 000066144-01 | ORVAL | RICKETTS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626013 | I959, R001, R109 | Unspecified abdominal pain | ICD10 | 06292017 | 06222017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T10:46:13+00:00 | 251345107175 | 000095824-01 | David | Baisden | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626042 | R6521 | Severe sepsis with septic shock | ICD10 | 06292017 | 06242017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T11:31:22+00:00 | 261165187175 | 000098097-01 | Bonnie | Tipton | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626060 | G9340 | Encephalopathy, unspecified | ICD10 | 06292017 | 06242017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T11:37:33+00:00 | 251179587176 | 000066073-01 | THOMAS | TURNER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06252017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626064 | R0600 | Dyspnea, unspecified | ICD10 | 06292017 | 06252017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T09:38:46+00:00 |  | 000111037-01 | Charlotte | Downs | COPC CENTRAL OHIO PRIMAR | 924573 | ANILA S | JAJODIA | 1508006859 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626078 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06292017 | 06232017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T14:06:55+00:00 |  | 000101446-01 | Jane | Kennedy | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626111 | J189 | Pneumonia, unspecified organism | ICD10 | 06292017 | 06232017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06272017 | 2017-06-27T07:35:04+00:00 |  | 000089509-01 | Virginia | Dice | ACUTE CARE SURGEONS LLC | 935511 | DAVID R | GIAMMAR | 1154307858 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06292017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627004 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 06292017 | 06262017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06262017 | 2017-06-26T14:47:54+00:00 |  | 000111716-01 | William | Craft Jr | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06232017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627011 | R1084 | Generalized abdominal pain | ICD10 | 06292017 | 06232017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06272017 | 2017-06-27T07:19:24+00:00 |  | 000077017-01 | Carolyn | Logsdon | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627039 | R531 | Weakness | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T08:25:01+00:00 |  | 000107277-01 | Stephanie | Campbell | SAMARITAN FAM CARE INC | 914053 | MICHELLE R | DEGROAT | 1508980202 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627081 | L0211 | Cutaneous abscess of neck | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06272017 | 2017-06-27T14:43:59+00:00 |  | 000109129-01 | Larry | Gibson | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04212017 | 04232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627103 | A419, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06292017 | 04212017 | 04232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T10:38:39+00:00 | 250995587178 | 000066496-01 | RICHARD | SWOPE | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 06272017 | 06292017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628029 | I4892, I495 | Sick sinus syndrome | ICD10 | 06292017 | 06272017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06282017 | 2017-06-28T15:02:49+00:00 |  | 000079032-01 | Anne | Jacoby | UHS PHYSICIANS | 926897 | ROGER G | LEVER | 1104849132 | THE OUTER BANKS HOSPITAL | 902685 | 1053375253 | THE OUTER BANKS HOSPITAL | 1053375253 | Inpatient | IP | Concurrent Review | CONC |  | THE OUTER BANKS HOSPITAL | 06292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628080 | M25559, R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 06292017 | 06262017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T15:47:01+00:00 |  | 000106452-01 | Marie | Milligan | OSU SURGERY LLC | 932344 | DANIEL E | VAZQUEZ | 1265611297 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628082 | I6200, W19XXXA | Unspecified fall, initial encounter | ICD10 | 06292017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T15:06:07+00:00 | 025273178-7172 | 000082112-01 | Arlene | Keegan | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 06282017 | 06292017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629078 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 06292017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T14:10:55+00:00 |  | 000095682-01 | Raymond | Rieckhoff | GERIATRIC PROVIDERS AND | 945455 | ORLANDO | HERNANDEZ | 1962405308 | CAREBRIDGE PALLIATIVE SR | 930892 | 1831423334 | CAREBRIDGE PALLIATIVE SERVICES INC | 1831423334 | Inpatient | IP | Post-Service | POST |  | CAREBRIDGE PALLIATIVE SERVICES INC | 06292017 | Denied | MediGold Southwest OH Essential Care | Fax | Administrative Denial | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | A170629070 | E46, I255, R1310, R296, Z515 | Encounter for palliative care | ICD10 | 06292017 | 05222017 |  | 99305, 99309 | NURSING FAC CARE, SUBSEQ | CPT | 0, 0 | 1, 1 | ,  | 0, 0 | CPT | C4 |  |  | No child records to display. |  |
