Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-13
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-13
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
| 02092018 | 2018-02-09T09:39:47+00:00 | Q20369838 | 000095036-01 | Edison | Montgomery | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03052018 | 05042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213012 | I255 | Ischemic cardiomyopathy | ICD10 | 02132018 | 33249, 33225, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T09:27:51+00:00 | Q20379366 | 000083212-01 | Michael | Palacky | MOUNT CARMEL HLTH PRVDRS | 932965 | MATTHEW R | PAULUS | 1407131022 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213061 | R0609 | Other forms of dyspnea | ICD10 | 02132018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T10:03:42+00:00 | Q20380007 | 000028662-01 | DONALD | BELL | FAIRFIELD HLTHCARE PROFS | 922119 | AJAY K | SHARMA | 1336287002 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02132018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213066 | M549 | Dorsalgia, unspecified | ICD10 | 02132018 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12042017 | 2017-12-04T16:43:40+00:00 |  | 000081761-01 | James | Powers | RETINA CONSULTANTS | 929923 | ABRAHAM S | MITIAS | 1750328241 | RETINAL CONSULTANTS INC | 938742 | 0 | RETINAL CONSULTANTS INC | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINAL CONSULTANTS INC | 02132018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01102018 | 06102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205059 | H353211, H353221 | EXDTVE AGE-REL MCLR DEGN, LEFT EYE, WITH ACTV CHRDL NEOVAS | ICD10 | 02132018 | 92012, 92014, 67028, J0178, 92134, 92235, 42250 | REPAIR OROANTRAL OR ORONASAL FISTULA, UP TO 1 CM | CPT | 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 152, 152, 152, 152, 152, 152, 152 | CPT | C4 |  |  |  |  |  | 0 |
| 01042018 | 2018-01-04T09:06:18+00:00 |  | 000077361-01 | Jean | Delong | PSYCH360 | 943619 | NICOLE | CONIGLIO | 1457794166 | PSYCH360 | 943619 | 1093191322 | NICOLE CONIGLIO | 1457794166 | OP Behavioral Health | OP BH | Pre-Service | PRE | NICOLE | CONIGLIO | 02132018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01052018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180104106 | F0390, F329, G4700, Z79899 | Other long term (current) drug therapy | ICD10 | 02132018 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01052018 | 2018-01-05T11:53:49+00:00 |  | 000078594-01 | Stephen | Manion | MOUNT CARMEL HLTH PRVDRS | 937027 | ANDREW P | KLAUS | 1376545319 | OH SLEEP MED INSTITUTE | 900138 | 1043397300 | OH SLEEP MEDICINE INSTITUTE | 1043397300 | Out of Network Services | OONS | Pre-Service | PRE |  | OH SLEEP MEDICINE INSTITUTE | 02132018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02082018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180105132 | G4730, I4510, I498 | Other specified cardiac arrhythmias | ICD10 | 02132018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29, 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01062018 | 2018-01-06T08:57:00+00:00 | Q20111573 | 000053768-01 | RICHARD | RUSSELL | LICKING MEM HLTH PROF | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02132018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01062018 | 07052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180110058 | C61 | Malignant neoplasm of prostate | ICD10 | 02132018 | J9217, J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 1, 24 | 1, 24 | Approved, Approved | 181, 181 | HCPCS | HC | J9217: 6: LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION)  7.5 MG  Dispensed as: 22.50 mg  1 treatment(s) each cycle  2 cycle(s): J3489: 24: INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01162018 | 2018-01-16T13:53:49+00:00 |  | 000072741-01 | Mabel | Carsey | MOUNT CARMEL HLTH SYS | 900677 | DAVID A | SABOL | 1902890569 | CENTRAL OH ENDOSCOPY CENTER | 916292 | 1467768549 | CENTRAL OH ENDOSCOPY CENTER | 1467768549 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01232018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180116101 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02132018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T16:33:31+00:00 |  | 000115006-01 | Diane | Foutz | COMMUNITY MEDICAL SPEC | 947957 | KIMBERLY H | LEWIS | 1073589412 | COMMUNITY MEDICAL SPEC | 914849 | 1619285160 | COMMUNITY MEDICAL SPECIALISTS | 1619285160 | Out of Network Services | OONS | Pre-Service | PRE |  | COMMUNITY MEDICAL SPECIALISTS | 02132018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02192018 | 05192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180201098 | E11621, L97522 | Non-prs chronic ulcer oth prt left foot w fat layer exposed | ICD10 | 02132018 | Q4131, 15275 | SKIN SUB GRAFT FACE/NK/HF/G | CPT | 10, 10 | 10, 10 | Approved, Approved | 90, 90 | CPT | C4 | PC to MCE wound clinic for general information r/t this type of wound application.  Spoke to Carla  she relays that Epifix is made from amniotic tissue and is applied easily  like a band-aid.  It can be done at the bedside/outpatient.  Medicare only allows 10 grafts of any kind per wound spot in a lifetime.  The patient cannot be a smoker or not smoked in 8/12 wks., Local Coverage Determination (LCD):, Wound Application of Cellular and/or Tissue Based Products (CTPs)  Lower Extremities (L36690), , Attached document, PC to 937-426-9500  which was the doctors office. Spoke with Myra  she relays that the EpiFix company submits the request  the doctor sends them the clinical information.  She will call EpiFix and ask them to call me., Advised that Medicare has specific guidelines that have to be meet in order to approve this product and I do not see all the information in the clinicals that were submitted  specifically:, Chronic Wounds are defined as wounds that do not respond to standard wound treatment for at least a 30 day period during organized comprehensive conservative therapy., , For all wounds  documentation (as outlined in the documentation requirements of the policy) and a comprehensive treatment plan  before initiation of a specialized wound therapy product is required., Also-Have adequate circulation/oxygenation to support tissue growth/wound healing as evidenced by physical examination (e.g.  Ankle-Brachial Index (ABI) of no less than 0.60  toe pressure > 30mm Hg); and Wound healing is impaired by the systemic use of tobacco. Therefore  ideally patients who have smoked will have ceased smoking or have refrained from systemic tobacco intake for at least 4 weeks during conservative wound care and prior to planned bioengineered skin replacement therapy., LVMM for Lamoy Coburn at MiMedx: 678-695-5066., Asked for specific information:, failed treatment  smoking hx?  time frame of services and applications., PON: extended auth request to 02/28/2018  MediGold has reached out several times for additional clinical information to support this request but has not rec'd anything., Additional clinical rec'd unfortunately it contains a lot of OV notes with very little related to the wound., PC to Cara at requesting provider office: Dr. Kimberly Lewis  937-426-9500., Attached notes are from hospital  PCP  Podiatrist and wound clinic., None address smoking history or treatment over 4 weeks that has failed other than antibiotics., I advised that Epifix can only be applied x 10 for one body site per LCD., Cara okay with changing the request to 10 applications., Wound Application of Cellular and/or Tissue Based Products, (CTPs)  Lower Extremities (L36690), She will ask Dr. Lewis to call me on Monday., No application has been applied yet.  They are anticipating application in the podiatry office., LVMM for member at (937) 479-3073 requested call back related to request rec'd from Podiatrist.  Information from member is needed:, , 1. When did wound on foot occur?, 2. When did mbr seek medical attention for wound?, 3. What has been the treatment so far for the wound?, 4. Does member smoke?,    If so  has she quit smoking and how long ago?, PC from Dr. Lewis  she relays that member waited till wound was pretty bad before seeking treatment  she has been on ATB but not sure that she has failed at another wound treatment.  Dr. Lewis had referred member to the wound clinic but doubts that she went because she is very concerned about co-pays. She also referred her to infectious disease.  , At this point the wound needs this type of wound application and she feels that she can get it under control fairly quickly., She also adds that member does not smoke., We discussed length of wound treatment and number of treatments., She was happy with 10 applications over 12 wks., Asked if it would be better to start auth at 02/19/18 to give her time to get the member scheduled and she said yes. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T18:33:19+00:00 |  | 000042947-01 | JOANNE | LAMBERT | OHIO PLASTIC SURGERY SPE | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02132018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 02132018 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180207091 | L304, M793, L987 | EXCESSIVE AND REDUNDANT SKIN AND SUBCUTANEOUS TISSUE | ICD10 | 02132018 | 15830 | EXCISION EXCESSIVE SKIN AND SUBCUTANEOUS TISSUE (INC LIPECTOMY) ABDOMEN | CPT | 0 | 1 |  | 0 | CPT | C4 | Received photos from provider  photos uploaded and attached ., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02072018 | 2018-02-07T14:51:12+00:00 |  | 000119454-01 | Deborah | Walkup | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 02132018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01242018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207153 | C50919, Z803, Z86010 | Personal history of colonic polyps | ICD10 | 02132018 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 60, 60 | CPT | C4 | PHONE CALL PLACED TO LINDSET BYRNE GENETIC COUNSELOR AT MCHS.  MESSAGE LEFT ON CONFIDENTIAL VM  REGARDING QUALIFYING DX.  INQUIRY TO MBR OF FAMILY W/BREAST CA  AGE OF DX.  REQUESTED RETURN CALL., RECEIVED RETURN PHONE CALL FROM LINDSEY BYRNE  GENETIC COUNSELOR WITH MCHS.  SHE STATED MEMBER HAS A MATERNAL AUNT WHO WAS DIAGNOSED W/BREAST CA AT AGE 47.   SHE ALSO REQUESTED 2 DX CODES BE ADDED C50.919 AND Z80.3. |  |  |  |  | 0 |
| 02082018 | 2018-02-08T12:18:24+00:00 |  | 000118148-01 | PAMELA | THERRIEN | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Post-Service | POST |  | THE OH STATE UNIVERSITY HOSPITAL | 02132018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01172018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180208105 | J439 | Emphysema, unspecified | ICD10 | 02132018 | 93306, 93320, 93325, 85027, 83887, G0424, G0302, 93016, 93018, 71020, 99205, 99212, 78598, 94621, 94729, 94010, 94620, 94726, 36600, G0303, G0304, G0305 | POST-DISCHARGE PULMONARY SURGERY SERVICES AFTER LVRS, MINIMUM OF 6 DAYS | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60 | HCPCS | HC | MBR HAS SEVERAL AUTHS FOR LVRS EVAL AT OSU  DOS COVERED BY MULTIPLE AUTHS. |  |  |  |  | 0 |
| 02052018 | 2018-02-05T10:06:07+00:00 | Q20326125 | 000072670-01 | Elizabeth | Cole | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 02132018 | Denied | MediGold Classic Preferred | HealthHelp | Criteria Not Met | Outpatient | 02132018 | 02142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180212056 | C23 | Malignant neoplasm of gallbladder | ICD10 | 02132018 | J9267, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 0, 0 | 2, 8 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02092018 | 2018-02-09T14:14:00+00:00 | Q20374915 | 000066387-01 | ERSEL | FISHER | OSU SURGERY LLC | 940854 | PETER H U | LEE | 1598932428 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02132018 | Approved | MediGold Essential Care | HealthHelp | Services Not Available In-Network | Outpatient | 02132018 | 04132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212104 | I7101 | Dissection of thoracic aorta | ICD10 | 02132018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 60 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T08:42:37+00:00 |  | 000081722-01 | Lee | Rathbun | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02142018 | 08142018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213102 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 02132018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 80053, 82728, G0364, 88237, 88262, 88271, 88275, 88305, 38221, 88313, 88184, 38222, 38222 | DX BONE MARROW BX & ASPIR | CPT | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T08:57:15+00:00 |  | 000081722-01 | Lee | Rathbun | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 08132018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213103 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 02132018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83615, 80053, 82728, G0364, 88237, 88262, 88271, 88275, 88305, 38221, 88313, 88184, 38222, 38222 | DX BONE MARROW BX & ASPIR | CPT | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 | 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T10:07:07+00:00 |  | 000006036-01 | LEROY | MCKELVEY | CHASE, DANIEL W | 935922 | DANIEL W | CHASE | 1063483857 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02132018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 05132018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213110 | K1230 | Oral mucositis (ulcerative), unspecified | ICD10 | 02132018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02132018 | 2018-02-13T13:03:00+00:00 |  | 000044574-01 | NORMA | MCCLOUD | GULF COAST MEDICAL CTR | 908387 |  | GULF COAST MEDICAL CENTER | 1982658407 | GULF COAST MEDICAL CTR | 908387 | 1982658407 | GULF COAST MEDICAL CENTER | 1982658407 | Out of Network Services | OONS | Pre-Service | PRE |  | GULF COAST MEDICAL CENTER | 02132018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 04132018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180213121 | S8992XA | Unspecified injury of left lower leg, initial encounter | ICD10 | 02132018 | 97163, 97110, 97140 | MANUAL THERAPY | CPT | 12, 12, 12 | 12, 12, 12 | Approved, Approved, Approved | 60, 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
