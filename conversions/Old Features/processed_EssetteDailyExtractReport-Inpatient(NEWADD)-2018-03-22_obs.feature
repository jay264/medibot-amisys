Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-22_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-22_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

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
| 03212018 | 2018-03-21T17:16:51+00:00 |  | 000031074-01 | JONATHAN | MILLER | COPC CENTRAL OHIO PRIMAR | 952420 | BO NA | LEE | 1326467424 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03192018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322003 | R531 | Weakness | ICD10 | 03222018 | 03192018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03012018 | 2018-03-01T09:13:23+00:00 |  | 000046388-01 | DANIELLE | AZBELL | ORLANDO HLTH PHYS GRP IN | 948449 | HOWARD G | SMITH | 1831179027 | ORLANDO HEALTH INC | 934619 | 0 | ORLANDO HEALTH INC | 0 | Observation | OBSV | Concurrent Review | CONC |  | ORLANDO HEALTH INC | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301019 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 03222018 | 02282018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03102018 | 2018-03-10T08:40:27+00:00 |  | 000120672-01 | Cheryl | Mangan | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03092018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312003 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 03222018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T14:01:37+00:00 |  | 000027705-01 | JANET | DYKE | CARDIOVASCULAR SPEC LLC | 937026 | RICHARD M | BARDALES | 1619978889 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316067 | I4891 | Unspecified atrial fibrillation | ICD10 | 03222018 | 03162018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T13:32:42+00:00 |  | 000076386-01 | Dorothy | Dallas Bailey | ORTHO & SPORTS MED CTR I | 927551 | STEPHEN T | OLSON | 1124247887 | MADISON COUNTY HOSPITAL | 902824 | 1982710703 | MADISON COUNTY HOSP REHABILITATION | 0 | Observation | OBSV | Pre-Service | PRE |  | MADISON COUNTY HOSP REHABILITATION | 03222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01312018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180126057 | S82831A | Oth fracture of upper and lower end of right fibula, init | ICD10 | 03222018 |  | 01312018 | 27814 | FX ANKLE-BIMALLEOLAR-OPEN RED | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  | No child records to display. |  |
| 03192018 | 2018-03-19T09:30:51+00:00 |  | 000088735-01 | Carolyn | Clark | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319071 | R531 | Weakness | ICD10 | 03222018 | 03162018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03192018 | 2018-03-19T15:33:25+00:00 |  | 000095199-01 | Wanda | Spicer | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03222018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03172018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320013 | R001 | Bradycardia, unspecified | ICD10 | 03222018 | 03172018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03192018 | 2018-03-19T15:40:02+00:00 |  | 000088805-01 | Francis | Darrah | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03182018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320014 | J189 | Pneumonia, unspecified organism | ICD10 | 03222018 | 03182018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T10:35:57+00:00 |  | 000117201-01 | Michael | Seme | CHRIST HSP ORTHO ASSOC I | 946298 | JEFFREY K | WU | 1679790190 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 03222018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03162018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212048 | M19172 | Post-traumatic osteoarthritis, left ankle and foot | ICD10 | 03222018 | 03162018 | 03172018 | 27702 | TOTAL ANKLE PROSTHESIS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03072018 | 2018-03-07T10:56:05+00:00 |  | 000057291-01 | SUSAN | DOWNARD | LICKING MEM HLTH PROF | 942536 | KEVIN M | OUWELEEN | 1598781460 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307019 | M13862, M170 | Bilateral primary osteoarthritis of knee | ICD10 | 03222018 | 03192018 | 03222018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03192018 | 2018-03-19T10:59:16+00:00 |  | 000072844-01 | Thomas | Pietrzak Jr | KHN IP MED | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319078 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 03222018 | 03162018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T11:47:51+00:00 |  | 000040901-01 | ADELINE | SAMSON | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03172018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319083 | R4182 | Altered mental status, unspecified | ICD10 | 03222018 | 03172018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03202018 | 2018-03-20T14:02:56+00:00 |  | 000054199-01 | Madelyn | Hunter | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320065 | M542 | Cervicalgia | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T14:09:04+00:00 |  | 000060158-01 | DORIS | BOYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Medical Only | Reports | Observation | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320066 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T07:48:23+00:00 |  | 000078404-01 | Carolyn | Gartner | MERCY HEALTH PHYSICIANS | 926848 | MUHAMMAD S | ASHRAF | 1891765038 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03222018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321032 | I878 | Other specified disorders of veins | ICD10 | 03222018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03212018 | 2018-03-21T09:27:26+00:00 |  | 000120469-01 | Betty | Johnson | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321044 | R079 | Chest pain, unspecified | ICD10 | 03222018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T14:22:30+00:00 |  | 000054567-01 | RICHARD | POPE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321069 | R109 | Unspecified abdominal pain | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T15:45:49+00:00 |  | 000045036-01 | CARL | BILLHARDT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321089 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03222018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03212018 | 2018-03-21T15:49:56+00:00 |  | 000071409-01 | Franklin | Verduga | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03192018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321093 | R079 | Chest pain, unspecified | ICD10 | 03222018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03212018 | 2018-03-21T16:00:49+00:00 |  | 000096425-01 | Linda | Dinnell | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321096 | K5660 | Unspecified intestinal obstruction | ICD10 | 03222018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T08:17:00+00:00 |  | 000034300-01 | DONALD | PENROD | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322002 | R040 | Epistaxis | ICD10 | 03222018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T08:34:51+00:00 |  | 000101875-01 | Patsy | Winters | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03222018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03212018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322016 | R079 | Chest pain, unspecified | ICD10 | 03222018 | 03212018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T10:05:29+00:00 |  | 000010044-01 | Geneva | Johnson | SOUND KENWOOD HSPISTS OF | 932738 | SRIKANTH | KESARI | 1932487337 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03162018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322041 | R079 | Chest pain, unspecified | ICD10 | 03222018 | 03162018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03222018 | 2018-03-22T15:59:12+00:00 |  | 000081085-01 | Mary | Shaw | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03222018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322062 | R6889 | Other general symptoms and signs | ICD10 | 03222018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
