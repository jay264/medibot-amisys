Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-04
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And the test pauses for "1" seconds
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
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
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 07252017 | 2017-07-25T08:24:43+00:00 |  | 000090237-01 | Gerald | Sprouse | DR PATRICIA A HALLER OPT | 924818 | PATRICIA A | HALLER | 1417946740 | DR PATRICIA A HALLER OPT | 924818 | 1619150976 | PATRICIA A HALLER | 1417946740 | Out of Network Services | OONS | Pre-Service | PRE | PATRICIA A | HALLER | 08042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07252017 | 09252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725121 | H401131 | PRIMARY OPEN-ANGLE GLAUCOMA, BILATERAL, MILD STAGE | ICD10 | 08042017 | 99213, 92083, 92134 | CPTR OPHTH DX IMG POST SEGMT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 63, 63, 63 | CPT | C4 | Spoke Lisa Fields on 080417 at 08:56:15 and requested clinical documentation., Spoke with Nancy Gardner; credentialing at MediGold; since Dr Patricia A Haller OD INC is part of the VSP Vision Care Network she is considered as an in-network Optometrist |  |  |  |  | 0 |
| 08022017 | 2017-08-02T15:48:10+00:00 |  | 000066130-01 | ROBERT | ROARK | MIDWEST SPINE INTERVENTI | 905254 | VIVEKANAND | MANOCHA | 1992727200 | MIDWEST SPINE INTERVENTI | 904964 | 1407975493 | MIDWEST SPINE INTERVENTIONAL | 1407975493 | Predetermination Request | PR | Pre-Service | PRE |  | MIDWEST SPINE INTERVENTIONAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802149 | G609, G894 | Chronic pain syndrome | ICD10 | 08042017 | 63650 | PERCU.IMPLNT NEUROSTIM.ELEC;EPIDURL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T13:53:44+00:00 |  | 000107753-01 | ANALEE | SHORT | CEI PHYSICIANS PSC INC | 921807 | LINDA J | GREFF | 1538108923 | CINCINNATI EYE INSTITUTE | 938139 | 1790772804 | CEI PHYSICIANS PSC INC | 1376530832 | Out of Network Services | OONS | Pre-Service | PRE |  | CEI PHYSICIANS PSC INC | 08042017 | Approved | MediGold Southwest OH Classic Preferred | Member | Services Not Available In-Network | Outpatient | 08042017 | 11042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803147 | H269 | Unspecified cataract | ICD10 | 08042017 | 66982, 66984, 66840, 66850, 66852, 66920, 65855 | TRABECULOPLASTY BY LASER SURGERY | CPT | 2, 2, 2, 2, 2, 2, 1 | 2, 2, 2, 2, 2, 2, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Called Linda Greff MD's office and spoke with Samantha Explained it was an expedited request for surgery I was informed that nurse/ or doctor is IM and she sent the request for them to call Stated she also put that it was an urgent request and they will call back  Aware we need clinical, Called (513-984-5133)- Linda Greff MD's office and spoke with Kelly who stated Stacy the surgery scheduler has the first message and should call back  She will send another IM, Received a message from Stacy @  Linda Greff MD's office called her back left her a message, Spoke with Stacy @  Linda Greff MD's office called her back as she leaves at noon  Stated MBR is not scheduled but will send clinical Aware I will be approving it, Addendum to previous note Stacy stated MBR is not scheduled and it will be at least 1 to 2 months, Spoke with Angella Saffell RN; Supervisor of Health Services at MediGold - since MBR is not scheduled yet  & delay in the contract will give a 3 month window, Called office because we have not received the requested clinical documentation at 13:25:11 on 080417 advised this request was marked expedited.  Receptionist was putting a note in the computer as urgent., This request for expedited was done in error by member services when processing this request.  They would like to withdraw this., adendum this was per Angella Saffell RN she spoke to member services, Essette fax did not fax Authorization and approval manually right faxed to  , STACEY/LINDA J GREFF MD  CEI PHYSICIANS PSC INC |  |  |  |  | 0 |
| 08032017 | 2017-08-03T15:26:28+00:00 |  | 000100777-01 | Linda | Longo | UNIVERSITY OF CINCINNATI | 928635 | JEAN M | ELWING | 1164503355 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 08042017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08042017 | 11042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803151 | I272 | Other secondary pulmonary hypertension | ICD10 | 08042017 | 94620, 94621 | PULM STRESS TEST/COMPLEX | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 | Essette fax did not fax Authorization and approval manually right faxed to  , LISA DAVIS/JEAN M ELWING MD  PAH CENTER @ UNIVERSITY OF CINCINNATI |  |  |  |  | 0 |
| 08022017 | 2017-08-02T14:07:52+00:00 | Q19002594 | 000111946-01 | Mary | Umbaugh | GENESIS MEDICAL GRP LLC | 917348 | SCOTT A | WEGNER | 1699729434 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08042017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 09032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804001 | C20 | Malignant neoplasm of rectum | ICD10 | 08042017 | 71250, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T13:08:52+00:00 | Q18950597 | 000099205-01 | David | Hull | EYE SPEC INC CHILLI | 911930 | LISA H | REAVES | 1346297058 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 08042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804002 | H468 | Other optic neuritis | ICD10 | 08042017 | 70553, 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T07:48:50+00:00 | Q19004357 | 000087451-01 | William | Short | DAYTON PHYSICIANS LLC | 909670 | KETAN S | SHAH | 1083664023 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 08042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 01292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804015 | C61 | Malignant neoplasm of prostate | ICD10 | 08042017 | J9043, J2505, J7510 | PREDNISOLONE ORAL PER 5 MG | HCPCS | 416, 8, 336 | 416, 8, 336 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9043: 416 Cabazitaxel 25 mg/m2  IV  day 1  every 21 days  8 cycles; J7510: 336 Prednisone 10 mg  PO  QD  every 21 days  8 cycles; J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles |  |  |  |  | 0 |
| 08032017 | 2017-08-03T07:39:38+00:00 | Q19006281 | 000069598-01 | DIANE | KINSER | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 08142017 | 10132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804024 | I420 | Dilated cardiomyopathy | ICD10 | 08042017 | 33249, 33225, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:30:59+00:00 | Q18995121 | 000097238-01 | Ruth | Wright | OH ONCOLOGY & HEMATOLOGY | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804077 | D480 | Neoplasm of uncertain behavior of bone/artic cartl | ICD10 | 08042017 | J0897 | Denosumab injection | HCPCS | 1440 | 1440 | Approved | 181 | HCPCS | HC | J0897: 1440 INJECTION  DENOSUMAB  1 MG  Dispensed as: 120.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 08032017 | 2017-08-03T12:20:19+00:00 | Q18986444 | 000061482-01 | JUDY | HAYWOOD | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804092 | C50211 | Malig neoplm of upper-inner quadrant of right female breast | ICD10 | 08042017 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T12:47:56+00:00 | Q18989856 | 000070170-01 | Luana | Frank | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804103 | R911 | Solitary pulmonary nodule | ICD10 | 08042017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T14:44:45+00:00 | Q19003562 | 000042402-01 | Melvin | Jackey | COPC CENTRAL OHIO PRIMAR | 937380 | NEIL E | RICHARD | 1801865670 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804137 | G4452 | New daily persistent headache (NDPH) | ICD10 | 08042017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T14:58:19+00:00 | Q19003806 | 000034495-01 | MARY | GOUDY | MOUNT CARMEL HLTH SYS | 919157 | DANA P | HOUSER | 1982857165 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804139 | M25469 | Effusion, unspecified knee | ICD10 | 08042017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T15:16:54+00:00 | Q19004187 | 000104119-01 | JAMES | MONTGOMERY | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804142 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 08042017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T12:58:33+00:00 | Q19012028 | 000070787-01 | Donna | Boiman | MOUNT CARMEL HLTH PRVDRS | 934916 | STEVEN | TANZER | 1578526513 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08032017 | 09022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804153 | R109 | Unspecified abdominal pain | ICD10 | 08042017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T12:09:59+00:00 | Q19011149 | 000087273-01 | Elsie | Canonaco | SWEST OH ENT SPECIALTIST | 908902 | MAHENDRAKUMAR | PATEL | 1235100520 | USD DAYTON INC | 901931 | 1861685802 | DAYTON MEDICAL IMAGING VANDALIA | 1306823638 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON MEDICAL IMAGING VANDALIA | 08042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08032017 | 09022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804165 | H90A21 | SNSRNRL HEAR LOSS, UNI, R EAR, WITH RSTRCD HEAR CNTRA SIDE | ICD10 | 08042017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
