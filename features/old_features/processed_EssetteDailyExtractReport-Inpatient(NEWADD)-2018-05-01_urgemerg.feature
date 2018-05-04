Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-01_URGEMERG
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
| 04252018 | 2018-04-25T08:54:24+00:00 |  | 000094422-01 | Daniel | Cottrell | ORTHO & NEUROLOGICAL CNS | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04262018 | 04272018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425030 | M9702XA | PERIPROSTH FRACTURE AROUND INTERNAL PROSTH L HIP JT, INIT | ICD10 | 04302018 | 04262018 | 04272018 | 27138, 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04262018 | 2018-04-26T15:41:43+00:00 |  | 000001303-01 | FRANCES | KENDIG | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 04262018 | 04272018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426069 | I4891, I509 | Heart failure, unspecified | ICD10 | 04302018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T14:06:27+00:00 |  | 000105925-01 | Carol | Blackwell | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 04262018 | 04292018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426057 | I4892, R079 | Chest pain, unspecified | ICD10 | 04302018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T10:46:38+00:00 |  | 000010994-01 | CAROLYN | BAILEY | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092018 | 06092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180322033 | G930, G950 | Syringomyelia and syringobulbia | ICD10 | 05012018 |  |  | 63047, 62190, 62272 | SPNL PUNC FOR DRAINAGE SPNL FLUID | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 03232018 | 2018-03-23T11:40:12+00:00 |  | 000120594-01 | DEBORAH | VANGUNDY | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04272018 | 04282018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323034 | M1712, M25562 | Pain in left knee | ICD10 | 04302018 | 04272018 | 04282018 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04162018 | 2018-04-16T14:06:57+00:00 |  | 000031394-01 | GARNET | MORGAN | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416101 | I70213 | Athscl native arteries of extrm w intrmt claud, bi legs | ICD10 | 05012018 | 04232018 | 04302018 | 35654, 35371 | ENDARTERECTOMY,COMMON FEMORAL | CPT | 1, 2 | 1, 2 | Approved, Approved | 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 04162018 | 2018-04-16T13:51:14+00:00 |  | 000073598-01 | Judith | Childers | OH HSP FOR PSYCHIATRY | 906239 |  | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 05012018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04132018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416105 | F319 | Bipolar disorder, unspecified | ICD10 | 05012018 | 04132018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04182018 | 2018-04-18T08:36:01+00:00 |  | 000098016-01 | Ronald | Bressler | GOOD SAMARITAN HSP & HLT | 903375 | SHAMSUDDIN C | PRACHA | 1104872779 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418012 | R0902 | Hypoxemia | ICD10 | 05012018 | 04172018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04232018 | 2018-04-23T14:22:39+00:00 |  | 000024040-01 | Ariel | Etgen | SOUND INPATIENT PHYS OF | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04302018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424015 | I5041 | Acute combined systolic and diastolic (congestive) hrt fail | ICD10 | 05012018 | 04232018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04262018 | 2018-04-26T12:57:00+00:00 |  | 000098183-01 | Robert | Sells Sr | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Medical Only | Fax | ACO - CHF | Inpatient | 04252018 | 04282018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426045 | I509 | Heart failure, unspecified | ICD10 | 04302018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T13:16:57+00:00 |  | 000105882-01 | Shirley | Bickel | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04302018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426046 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05012018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04282018 | 2018-04-28T07:23:13+00:00 |  | 000050885-01 | CAROLYN | JONES | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04272018 | 04282018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430002 | S43422D | Sprain of left rotator cuff capsule, subsequent encounter | ICD10 | 04302018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04112018 | 2018-04-11T09:12:47+00:00 |  | 000102957-01 | Arlene | Hilling | APOGEE MED GRP OHIO INC | 923380 | W TRAVIS | LAWSON JR | 1134114044 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04102018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411054 | R112 | Nausea with vomiting, unspecified | ICD10 | 05012018 | 04102018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 04172018 | 2018-04-17T11:46:27+00:00 |  | 000082795-01 | LAWRENCE | RIESTENBERG | MERCY HEALTH PHYSICIANS | 921248 | GREGORY C | ZENNI | 1285664789 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417085 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 05012018 | 04242018 | 05252018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04182018 | 2018-04-18T15:59:23+00:00 |  | 000033483-01 | DAVID | WILDERMUTH | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419003 | R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 05012018 | 04232018 | 04302018 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 04242018 | 2018-04-24T07:18:56+00:00 |  | 000085462-01 | Thomas | Ferryman | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424044 | E871, L02413, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05012018 | 04232018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04252018 | 2018-04-25T07:17:01+00:00 |  | 000106052-01 | Opal | Stevens | SOUND KENWOOD HSPISTS OF | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05012018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425026 | I459, R001 | Bradycardia, unspecified | ICD10 | 05012018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T09:14:33+00:00 |  | 000061067-01 | EDWIN | BROOKS | HOSPITALIST MEDICINE PHY | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427015 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05012018 | 04262018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04272018 | 2018-04-27T10:27:37+00:00 |  | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427031 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 05012018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T11:24:38+00:00 |  | 000010759-01 | MARY | REA | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427032 | I509, R451 | Restlessness and agitation | ICD10 | 05012018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T12:07:48+00:00 |  | 000012858-01 | LEONORA | KEERAN | MOUNT CARMEL HLTH SYS | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04302018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427037 | I509 | Heart failure, unspecified | ICD10 | 05012018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272018 | 2018-04-27T17:21:41+00:00 |  | 000114014-01 | Robert | Pedersen | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430001 | E11621, L03116 | Cellulitis of left lower limb | ICD10 | 05012018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03272018 | 2018-03-27T10:24:02+00:00 |  | 000069869-01 | Judy | Mercer | MOUNT CARMEL HLTH SYS | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327086 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 05012018 | 03302018 | 05012018 | 32663, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 33, 33 | CPT | C4 |  |  |  | 31.0 |
| 04112018 | 2018-04-11T12:16:40+00:00 |  | 000110704-01 | R M | Haines | HIGHLAND DISTRICT HSP PR | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04102018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411069 | F315 | Bipolar disord, crnt epsd depress, severe, w psych features | ICD10 | 05012018 | 04102018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T07:45:13+00:00 |  | 000054697-01 | ROSE | MEDLEY | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413002 | C062 | Malignant neoplasm of retromolar area | ICD10 | 05012018 | 04202018 | 04302018 | 31600, 38724, 21025, 42950, 41110, 42845, 21244, 20955, 15757, 15758, 43246 | GI ENDOSCOPY PLCMNT PERCU GAST TUBE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 | CPT | C4 |  |  |  | 5.0 |
| 04172018 | 2018-04-17T08:56:47+00:00 |  | 000028685-01 | CHARLENE | MILOVICH | ORTHOPEDIC ONE INC | 935558 | JOSEPH | MILETI | 1003826546 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 05012018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180417036 | T84498A, Z96622 | Presence of left artificial elbow joint | ICD10 | 05012018 |  |  | 24371 | REVISE RECONST ELBOW JOINT | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  | No child records to display. |  |
| 04172018 | 2018-04-17T13:55:49+00:00 |  | 000086285-01 | June | Bruker-Elder | MARIETTA MEM HSP | 932287 | RICHARD E | HOYT | 1609064617 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 05012018 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180423168581.0 |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180417102 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 05012018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04182018 | 2018-04-18T13:57:34+00:00 |  | 000121928-01 | Marita | Hoffman | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418042 | E876, K5660 | Unspecified intestinal obstruction | ICD10 | 05012018 | 04172018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T15:40:01+00:00 |  | 000099216-01 | Paula | Russell | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418068 | E43 | Unspecified severe protein-calorie malnutrition | ICD10 | 05012018 | 04242018 | 04272018 | 49000, 44015 | TUBE JEJUNOSTOMY FOR ENTERAL ALIMENTATION, INTRAOPERATIVE, ANY METHOD | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04252018 | 2018-04-25T10:05:16+00:00 |  | 000030595-01 | MARY | BROWN | OSU INTERNAL MED LLC | 947440 | RAVI B | PAVURALA | 1912130121 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425023 | R0602 | Shortness of breath | ICD10 | 05012018 | 04242018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T07:38:20+00:00 |  | 000072893-01 | Barry | Weber | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425036 | B20, C9110, J189 | Pneumonia, unspecified organism | ICD10 | 05012018 | 04242018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04252018 | 2018-04-25T09:26:13+00:00 |  | 000112253-01 | Louis | Lamar Jr | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04242018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425043 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04242018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04262018 | 2018-04-26T09:11:17+00:00 |  | 000114514-01 | Dallas | Lemaster | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 04252018 | 04282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426004 | R062 | Wheezing | ICD10 | 05012018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T11:46:09+00:00 |  | 000023934-01 | FRANCES | KINNETT | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05012018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180430035 | G9340 | Encephalopathy, unspecified | ICD10 | 05012018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04262018 | 2018-04-26T14:55:36+00:00 |  | 000080221-01 | Carol | Frerick | TRIHEALTH G LLC | 950686 | THOMAS | GETREU | 1649513185 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 05012018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426059 | R0602 | Shortness of breath | ICD10 | 05012018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
