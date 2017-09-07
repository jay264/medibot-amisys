Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-05_URGEMERG
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
| 08182017 | 2017-08-18T09:57:59+00:00 |  | 000110712-01 | Geneva | Bishop | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821037 | N179, N183, R748 | Abnormal levels of other serum enzymes | ICD10 | 09052017 | 08172017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09012017 | 2017-09-01T15:01:51+00:00 |  | 000101284-01 | Mary | Duckworth | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09052017 | Denied | MediGold Essential Care | Phone | Criteria Not Met | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170901058 | R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 09052017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09012017 | 2017-09-01T13:37:06+00:00 |  | 000114495-01 | Jacquelene | Jones | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 09052017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 09052017 | 09062017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170901049 | I639 | Cerebral infarction, unspecified | ICD10 | 09052017 | 09012017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T11:03:35+00:00 |  | 000094666-01 | Sherie | Mescher | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814075 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09052017 | 09012017 | 09022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08292017 | 2017-08-29T09:48:20+00:00 |  | 000077726-01 | Judith | Smith | TRI STATE HSPISTS LLC | 932234 | ANDREW J | CASTELLANOS | 1144409392 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 09052017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08262017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829020 | N390, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 09052017 | 08262017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08312017 | 2017-08-31T08:32:42+00:00 | 025201202-7228 | 000045173-01 | GARNETT | MASTIN | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09052017 | Approved | MediGold Medical Only | EMR | Inpatient | Inpatient | 08302017 | 09022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831005 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 09052017 | 08302017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T10:49:14+00:00 | 025240806-7214 | 000072957-01 | Jeffrey | Swartz | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802047 | I2510, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09052017 | 08222017 | 09012017 | 33533, 33405 | REPLACEMENT AORTIC VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 11, 11 | CPT | C4 |  |  |  | 10.0 |
| 08302017 | 2017-08-30T10:12:38+00:00 | 255401707241 | 000073049-01 | Connie | Carter | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Essential Care | Reports | ACO - Cardiology | Inpatient | 08292017 | 09012017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830028 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 09052017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08152017 | 2017-08-15T10:12:32+00:00 | 251294257227 | 000008318-01 | WILLIAM | ZWEYDORFF | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08152017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815027 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 09052017 | 08152017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 08302017 | 2017-08-30T09:38:31+00:00 | 250796007241 | 000051904-01 | FRED | MOORE | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830016 | K5660 | Unspecified intestinal obstruction | ICD10 | 09052017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08312017 | 2017-08-31T08:32:13+00:00 |  | 000089594-01 | Edward | Horton | AJAZ UMERANI MD INC | 902296 |  | AJAZ UMERANI MD INC | 1043587470 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831033 | I4891, Z8546 | Personal history of malignant neoplasm of prostate | ICD10 | 09052017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T09:53:21+00:00 | 253397947240 | 000051793-01 | Robert | Lockard | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08282017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829017 | R042 | Hemoptysis | ICD10 | 09052017 | 08282017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09012017 | 2017-09-01T09:37:29+00:00 | 250937197243 | 000052667-01 | JACQUELINE | ROBERTS | BIG RUN URGENT CARE LLC | 937160 | MARVIN R | MCCREARY | 1780662270 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08312017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901017 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09052017 | 08312017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08312017 | 2017-08-31T11:21:47+00:00 |  | 000042333-01 | MARY | PLACE | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831042 | D649, D701, N390, Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 09052017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08302017 | 2017-08-30T10:15:27+00:00 | 250282167241 | 000101284-01 | Mary | Duckworth | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08302017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830029 | I2692 | Saddle embolus of pulmonary artery w/o acute cor pulmonale | ICD10 | 09052017 | 08302017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08202017 | 2017-08-20T10:05:16+00:00 |  | 000091190-01 | Earl | Stauffer | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09052017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820018 | S32009A | Unsp fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 09052017 | 08172017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 08252017 | 2017-08-25T10:30:17+00:00 | 257724487236 | 000066958-01 | JAMES | LEGG | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09052017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08252017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825028 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09052017 | 08252017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
