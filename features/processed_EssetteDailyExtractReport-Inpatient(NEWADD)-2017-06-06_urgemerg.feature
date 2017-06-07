Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-06_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 03302017 | 2017-03-30T14:56:50+00:00 |  | 000032580-01 | GERALD | HALL | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142017 | 04242017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330043 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 06062017 | 04142017 | 04252017 | 39400, 32505 | WEDGE RESECT OF LUNG INITIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 11, 11 | CPT | C4 |  |  |  | 11.0 |
| 04172017 | 2017-04-17T10:53:40+00:00 |  | 000078455-01 | Willy | Fletcher | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 04142017 | 04232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080885.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417020 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06062017 | 04142017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04172017 | 2017-04-17T12:08:45+00:00 |  | 000033870-01 | W SHELDON | JACKSON | HOLMES FAMILY MED INC | 934441 | ROBERT A | HART | 1215939954 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132017 | 04252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418010 | R55 | Syncope and collapse | ICD10 | 06062017 | 04132017 | 04252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04182017 | 2017-04-18T08:28:16+00:00 |  | 000032884-01 | MELINDA | COX | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172017 | 04272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419050 | N189, R112, R197 | Diarrhea, unspecified | ICD10 | 06062017 | 04172017 | 04282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04252017 | 2017-04-25T08:39:50+00:00 |  | 000114512-01 | Ramon | Greene | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425121 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 06062017 | 04242017 | 04302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04262017 | 2017-04-26T09:25:00+00:00 |  | 000000826-01 | MARILYN | CHERUP | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06052017 | 06052017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426044 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06062017 | 06052017 | 06052017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 04262017 | 2017-04-26T14:17:41+00:00 |  | 000064642-01 | DONNARAE | GIBSON | ARBOR VIEW FAM MED INC | 926744 | JESSICA | CONN | 1659691806 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427044 | F1193 | Opioid use, unspecified with withdrawal | ICD10 | 06062017 | 04252017 | 04302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272017 | 2017-04-27T15:58:51+00:00 |  | 000030969-01 | DORA | BOICHAN | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427088 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06062017 | 06052017 | 06062017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04272017 | 2017-04-27T15:04:00+00:00 |  | 000035578-01 | CAROLYN | EADS | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262017 | 04302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428010 | M84359S, R296, S72044A | Nondisp fx of base of neck of right femur, init for clos fx | ICD10 | 06062017 | 04262017 | 05012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05222017 | 2017-05-22T08:54:07+00:00 |  | 000079895-01 | Betty | Stamper | ER MED PHYS OF CHAMPAIGN | 940456 | JUSTIN D | COOMES | 1730322413 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522022 | I10, J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06062017 | 05202017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05222017 | 2017-05-22T08:25:18+00:00 |  | 000085486-01 | Finola | Abell | SOUND KENWOOD HSPISTS OF | 925204 | AMIT | PATEL | 1720231897 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05202017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522036 | A419, E872, I959, J189, J9601, R6520, S0101XA, S20211A | Contusion of right front wall of thorax, initial encounter | ICD10 | 06062017 | 05202017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05222017 | 2017-05-22T10:53:29+00:00 |  | 000000413-01 | Patricia | Hockenberry | HMP OF OHIO PC | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05212017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522055 | R55, S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 06062017 | 05212017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T13:51:13+00:00 | 026123982-7139 | 000012620-01 | MARTHA | KROENER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05202017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522097 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 06062017 | 05202017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 05232017 | 2017-05-23T10:14:28+00:00 |  | 000096542-01 | Sara | Meyer | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05212017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523043 | K819, K859 | Acute pancreatitis, unspecified | ICD10 | 06062017 | 05212017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05242017 | 2017-05-24T14:22:07+00:00 |  | 000086532-01 | Alan | Silverman | MERCY HEALTH PHYSICIANS | 921804 | DAVID G | BABBITT | 1346249018 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05232017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524062 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 06062017 | 05232017 | 06012017 | 33510 | CORONARY BYPASS, SINGLE GRAFT | CPT | 0 | 1 |  | 9 | CPT | C4 |  |  |  | 5.0 |
| 05252017 | 2017-05-25T09:50:35+00:00 |  | 000034701-01 | LEON | HALE | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05242017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525022 | R4182 | Altered mental status, unspecified | ICD10 | 06062017 | 05242017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05302017 | 2017-05-30T09:48:18+00:00 | 262696907150 | 000088550-01 | Ronald | Frank | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530030 | H578 | Other specified disorders of eye and adnexa | ICD10 | 06062017 | 05292017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T09:25:57+00:00 |  | 000071548-01 | Barbara | Baehr | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06062017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05292017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530031 | J9691 | Respiratory failure, unspecified with hypoxia | ICD10 | 06062017 | 05292017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05282017 | 2017-05-28T18:51:48+00:00 |  | 000070557-01 | GLENNA | HATFIELD | METRO PSYCHIATRY INC | 911689 | MARK E | BLAIR | 1194755504 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530055 | F314 | Bipolar disord, crnt epsd depress, sev, w/o psych features | ICD10 | 06062017 | 05282017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05302017 | 2017-05-30T10:35:40+00:00 |  | 000013870-01 | EDWIN | DAILY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05302017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530061 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06062017 | 05302017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05302017 | 2017-05-30T11:13:39+00:00 |  | 000042489-01 | MARY | HEWITT | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05292017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530091 | G9340, J189 | Pneumonia, unspecified organism | ICD10 | 06062017 | 05292017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05292017 | 2017-05-29T11:40:17+00:00 |  | 000115352-01 | Carol | Chaike | UNIVERSITY OF CINCINNATI | 942422 | BRANDON | FOREMAN | 1477748382 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05292017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530097 | R569 | Unspecified convulsions | ICD10 | 06062017 | 05292017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T07:31:52+00:00 |  | 000089873-01 | Danny | Overbey Sr | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05292017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530124 | J189, N179, R0602, R0902, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 06062017 | 05292017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05302017 | 2017-05-30T11:22:55+00:00 |  | 000080748-01 | Troy | Wilson | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530158 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 06062017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T10:19:08+00:00 |  | 000079057-01 | Ned | Miller II | OSU INTERNAL MED LLC | 940873 | DANIEL R | DIAZ | 1851681332 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05282017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530172 | A419 | Sepsis, unspecified organism | ICD10 | 06062017 | 05282017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T14:28:14+00:00 |  | 000056447-01 | ABE | MILLER | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05272017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530218 | I509, R079 | Chest pain, unspecified | ICD10 | 06062017 | 05272017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05312017 | 2017-05-31T08:17:13+00:00 |  | 000081141-01 | Lucinda | Sharb | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531025 | R110, R1110 | Vomiting, unspecified | ICD10 | 06062017 | 05282017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05312017 | 2017-05-31T08:42:52+00:00 |  | 000104808-01 | JONI | KISTLER | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05292017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531037 | J449, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06062017 | 05292017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05312017 | 2017-05-31T10:36:38+00:00 |  | 000080735-01 | Cheryl | Powell | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05302017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531040 | I509, J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06062017 | 05302017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05312017 | 2017-05-31T14:16:19+00:00 |  | 000076192-01 | Don | Skillman | SOUND KENWOOD HSPISTS OF | 927955 | WILLIAM J | FORTON | 1902067853 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06062017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Inpatient | Inpatient | 05302017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531073 | M4842XA | Fatigue fracture of vertebra, cervical region, init for fx | ICD10 | 06062017 | 05302017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06012017 | 2017-06-01T10:12:05+00:00 |  | 000028434-01 | COALENE | JENKINS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05312017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601023 | N390 | Urinary tract infection, site not specified | ICD10 | 06062017 | 05312017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06012017 | 2017-06-01T09:04:57+00:00 |  | 000096469-01 | ROBERT | COOLEY | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05312017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601027 | R079 | Chest pain, unspecified | ICD10 | 06062017 | 05312017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06022017 | 2017-06-02T08:55:03+00:00 |  | 000116738-01 | Donald | Lamb | MERCY HEALTH PHYSICIANS | 921220 | JEFFREY R | WELSHHANS | 1851425938 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602016 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06062017 | 06022017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06022017 | 2017-06-02T10:49:32+00:00 |  | 000032083-01 | WALTER | STAMBAUGH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06012017 | 06052017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602040 | I509 | Heart failure, unspecified | ICD10 | 06062017 | 06012017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06022017 | 2017-06-02T10:06:51+00:00 | 025931955-7145 | 000078423-01 | Rose | Dobbin | MOUNT CARMEL HLTH PRVDRS | 934996 | G STEPHEN | VINCENT | 1043251218 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602046 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06062017 | 06052017 | 06062017 | 34812, 34825, 34820 | XPOSE FOR ENDOPROSTH, ILIAC | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T15:25:20+00:00 |  | 000096151-01 | DANIEL | SMITH | OHIOHEALTH PHYS GRP | 917895 | JOHN A | PHILLIPS | 1922120732 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05252017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602075 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06062017 | 05252017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T07:47:11+00:00 |  | 000092445-01 | Helen | Miller | UNIVERSITY OF CINCINNATI | 930721 | DAVID W | LAMONT | 1740211069 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605015 | L03115 | Cellulitis of right lower limb | ICD10 | 06062017 | 06022017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T08:38:38+00:00 |  | 000080021-01 | Sallie | Hill | THE UROLOGY GROUP | 921233 | PATRICK M | WIRTZ | 1881851467 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605043 | E8350 | Unspecified disorder of calcium metabolism | ICD10 | 06062017 | 06022017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T10:27:45+00:00 |  | 000025110-01 | MILDRED | HUNT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06032017 | 06062017 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605048 | E785 | Hyperlipidemia, unspecified | ICD10 | 06062017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T15:33:26+00:00 |  | 000011814-01 | DOROTHY | HEWITT | ST JOSEPHS HOSPITAL | 905445 |  | ST JOSEPHS HOSPITAL | 1164429908 | ST JOSEPHS HOSPITAL | 905445 | 1164429908 | ST JOSEPHS HOSPITAL | 1164429908 | Inpatient | IP | Concurrent Review | CONC |  | ST JOSEPHS HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06042017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605128 | S32501A | Unsp fracture of right pubis, init for clos fx | ICD10 | 06062017 | 06042017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06052017 | 2017-06-05T16:02:00+00:00 |  | 000079149-01 | Angela | Posey | COPC CENTRAL OHIO PRIMAR | 933619 | KIMBERLY M | MORTON | 1558656819 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605137 | E119, I10, I4891, I639 | Cerebral infarction, unspecified | ICD10 | 06062017 | 06022017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T09:09:20+00:00 |  | 000065056-01 | LORRAINE | CRITES | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06052017 | 06062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606022 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 06062017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
