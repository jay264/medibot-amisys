Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-23_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-23_URGEMERG
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	#And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I enter the first element from "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I subtract one from the "<auth_approval_days>" days and put the result in the "auth_days" image
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
	And the test pauses for "3" seconds
	And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

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
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02042017 | 2017-02-04T10:31:46+00:00 | 2506977035 | 000018994-01 | ANDREA | LONGWELL | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 02032017 | 02072017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170206023 | I4891 | Unspecified atrial fibrillation | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 02/04/17 that presents for admission on 02/03/17 thru ER woth c/o palpitations.  Pt is admitted in Inpatient status., ACO AFIB  6140.00 | 02032017, 02042017, 02052017, 02062017, 02072017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 02152017 | 2017-02-15T14:04:25+00:00 |  | 000046922-01 | ROLAND | PHILLIPS | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142017 | 02172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170216034 | E162 | Hypoglycemia, unspecified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Changing status from inpatient to observation, Per face sheet mbr admitted as observation  auth not required | 03142017, 03152017, 03162017, 03172017, 02142017, 02152017, 02162017, 02172017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation, Observation, Observation | , , , , Approved, Approved, Approved,  | 4, 4, 4, 4, 4, 4, 4, 4 |
| 02272017 | 2017-02-27T15:41:00+00:00 |  | 000089749-01 | Rosemary | Wallace | KNOX COMMUNITY HSP PHYS | 909698 | GREGORY J | CUSH | 1376579243 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170227107 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  |  |  | 0 |
| 03102017 | 2017-03-10T16:17:12+00:00 |  | 000098668-01 | David | Lemaster | CARDIOTHORACIC & VASC SU | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172017 | 05202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Approved | A170313002 | I739 | Peripheral vascular disease, unspecified | ICD10 | 03232017 | 34151 | ARTERIOTOMY TRUNK-REM EMBOLUS | CPT | 1 | 1 | Approved | 65 | CPT | C4 | 71 year old male  presented to the facility for a prior auth procedure and underwent a  throbectomy of the left lower extremity femoral to below -knee popliteal artery bypass graft and redo of the left femoral to below the knee popliteal artery by pass with 6 mm PTFE with no complications. |  |  |  |  | 0 |
| 03132017 | 2017-03-13T10:42:03+00:00 | 257224297071 | 000019742-01 | ELAINE | PHILLIPS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03122017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170313027 | E860 | Dehydration | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista discharge report dated 03/23/17 that pt EXPIRED on 03/22/17 at 12:31 | 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11 |
| 03142017 | 2017-03-14T11:37:18+00:00 |  | 000079133-01 | William | Howiler | HMP OF OHIO PC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122017 | 03152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316076 | J189 | Pneumonia, unspecified organism | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | 86-yr old admitted for pneumonia w/ hemodynamic instability > 48 hrs  Influenza A  unstable DM  Hypertension  CKD III.  Failed OP tx.  After 3 days of treatments in the CCU  patient DC'd to IP Hospice. | 03122017, 03132017, 03142017, 03152017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03142017 | 2017-03-14T15:39:43+00:00 |  | 000042454-01 | DONALD | PETTITT | PROVIDENCE MEDICAL GROUP | 912485 | ANDREW P | BLACK | 1790011724 | BUFFALO GENERAL HOSPITAL | 936318 | 0 | BUFFALO GENERAL HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | BUFFALO GENERAL HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320063 | I639 | Cerebral infarction, unspecified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | 74 year old male presented to the ED (OON) facility with episodes of slurred speech speech thick  face droop/numbness intermittent stuttering. SLP eval recommend regular with nectar thick  potential need for outpatient therapy pt/ot eval completed r independent ambulation 250 ' recommend outpatient therapy.  Mbr was visiting Buffalo area   at Columbus Blue Jacket Game. Mbr to Return to Columbus Ohio lives with spouse., DISCHARGE DATE ATTACHED | 03112017, 03122017, 03132017, 03142017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient,  | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03212017 | 2017-03-21T09:37:01+00:00 | 250039147079 | 000061765-01 | BEVERLY | BEAVER | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03202017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321012 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03202017, 03212017, 03222017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 03152017 | 2017-03-15T13:44:09+00:00 |  | 000116500-01 | Alden | Schneider | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03142017 | 03202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321044 | N390 | Urinary tract infection, site not specified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM requesting clinical update or dc date. | 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03212017 | 2017-03-21T11:51:23+00:00 |  | 000070477-01 | Richard | Leggett | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03202017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321051 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03202017, 03212017, 03222017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 03232017 | 2017-03-23T15:41:22+00:00 |  | 000107111-01 | E Robert | Hitchcock | DAYTON SURGEONS INC | 901564 | JONATHAN E | VELASCO | 1962477661 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03232017 | Approved | MediGold Essential Care | Fax | Pending Admission | Inpatient | 04112017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Approved | A170323130 | I714, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 03232017 | 34802 | ENDOVASC ABDO REPR W/DEVICE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T14:12:12+00:00 |  | 000043938-01 | CHARLES | BOLDOSER | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 03292017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Approved | A170323132 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03232017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
