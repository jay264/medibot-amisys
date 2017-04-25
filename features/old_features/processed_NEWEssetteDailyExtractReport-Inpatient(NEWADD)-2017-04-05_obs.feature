Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-05_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-05_OBS
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_requested" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_requested" image
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
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
		| requested_date  | military_date             | other_reference_#    |	member_id   | member_first_name |	member_last_name | practice_name               | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name      | requesting_provider_npi_# |	facility_name                 | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	      | servicing_provider_npi_# |	sub_class  | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason                 |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type         | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code                    | service_description                                      | service_type |	qty_appr      |	qty_reqd      |	determination                          |	auth_approval_days | type   |	type_code  | notes                                                                                                                                                                                                                                   | care_date  | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02282017 | 2017-02-28T14:34:53+00:00 |  | 000110640-01 | Terry | Budd | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04052017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02272017 | 03102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170302080 | D649, D72829, J189, N189, R4182, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | 63 year old male presented to the ED with altered mental status  was recently discharged from ECF   this is that 3rd hospitalization within 30  days.  Mbr has a hx of tongue cancer and is currently receiving radiation  mbr has a peg tube.  CXR revealed bilateral pneumonia and was started on ATB's., The mbr remains inpatient  will update auth to inpatient. CXR shows more opacification LUL.Cardiac monitor showed possible VT   then bradycardia Magnesium level low. pulm and cardiology consulted   the mbr continues with radiation therapy for  tongue cancer.  increasing sob with wheezing  cough with productive | 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017 | Observation, Observation, Observation, Observation, Observation, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 |
| 03072017 | 2017-03-07T10:51:23+00:00 |  | 000115738-01 | Victoria | Gardner | ORTHO FOOT & ANKLE CNTR | 904283 | CHRISTOPHER F | HYER | 1033185152 | NEW ALBANY SURGERY CENTER | 918950 | 1003103474 | NEW ALBANY SURGERY CENTER | 1003103474 | Observation | OBSV | Concurrent Review | CONC |  | NEW ALBANY SURGERY CENTER | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03312017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170308023 | E11610, E11621, S9304XA | Dislocation of right ankle joint, initial encounter | ICD10 | 04052017 | 27870, 20690, 11981 | INSERT DRUG IMPLANT DEVICE | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 5, 5, 5 | CPT | C4 | Clinical documentation reviewed in PowerChart | 03312017, 04012017, 04022017, 04032017, 04042017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03212017 | 2017-03-21T11:27:45+00:00 |  | 000090870-01 | Herbert | Peach | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323126 | R2990, R471 | Dysarthria and anarthria | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Call to UR and LVM requesting clinical information., Per facility- MBR pt type changes to OBS. Updated auth. | 03202017, 03212017, 03222017, 03232017, 03242017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03232017 | 2017-03-23T10:59:42+00:00 |  | 000034176-01 | LELAND | FORREST | EMERGENCY SERVICES INC | 949093 | GEREMIHA G | EMERSON | 1447516372 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324119 | M549 | Dorsalgia, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Call to UR to request clinical information.  Mbr was changed to Observation per hospital. | 03222017, 03232017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03242017 | 2017-03-24T09:15:07+00:00 |  | 000096737-01 | Robert | Hoffer | HOSPITAL MEDICINE SERVIC | 900285 | SHEFALI N | JHAVERI | 1841239571 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03232017 | 03282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327073 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Determined by Medical Director to meet OBS level of care for AECOPD. | 03232017, 03242017, 03252017, 03262017, 03272017, 03282017 | Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6 |
| 03282017 | 2017-03-28T11:40:29+00:00 |  | 000103704-01 | Sandra | Hill | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170329004 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | 66 year old female presented to the ED with c/o SOB  PMH of COPD. | 03272017, 03282017, 03292017, 03302017, 03312017, 04012017 | Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03292017 | 2017-03-29T07:51:06+00:00 |  | 000062231-01 | LINDA | SEYMOUR | PICKAWAY HEALTH SERVICES | 942920 | RAUL A | ZAMORA | 1538484415 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170329083 | K5660 | Unspecified intestinal obstruction | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | 71 year old female presented to the ED with nausea and vomiting. CT of the abd revealed decompressed colon with dilated fluid -filled small bowel consistent with small bowel obstruction  Surgery consulted and the mbr underwent a Exploratory Lap. w/o complications. | 03292017, 03302017, 03312017, 04012017, 04022017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03312017 | 2017-03-31T10:11:50+00:00 | 251045927088 | 000019967-01 | RUTH | STONE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03302017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331011 | N390 | Urinary tract infection, site not specified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03302017, 03312017, 04012017, 04022017, 04032017, 04042017 | Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03302017 | 2017-03-30T13:13:07+00:00 |  | 000066817-01 | RALPH | MCNEAL | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03292017 | 03302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331025 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03292017, 03302017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03302017 | 2017-03-30T08:37:09+00:00 |  | 000094348-01 | Tracy | Pseekos | ARBOR VIEW FAM MED INC | 926744 | JESSICA | CONN | 1659691806 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03292017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331051 | R609 | Edema, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with bilateral leg pain and swelling with SOB.  CHF was ruled out. Doppler Neg. Vascular c/s recommended leg elevation/ wraps but no further vascular studies or interventions.   CT of abd revealed possible enteritis and UA was positive.  Tx: IV Lasix  Leg wraps  PO pain control., Remained hemodynamically stable.  Submitted to the Medical Director for Determination., The Medical Director determined Observation. | 03292017, 03302017, 03312017, 04012017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03302017 | 2017-03-30T08:39:12+00:00 |  | 000093756-01 | Wilma | Frank | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292017 | 03312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331055 | R300 | Dysuria | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with Vertigo. Positive for UTI. EKG with A-fib RVR w no ST changes. Initial troponin elevated to 0.146 trending down. Denies CP. Report as probable demand ischemia from UTI. CXR with interstitial pulmonary edema. Stress test Neg. CT of head w no acute process. Tx with IV ATB's.  Remained hemodynamically stable. | 03292017, 03302017, 03312017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03302017 | 2017-03-30T12:20:30+00:00 |  | 000109365-01 | JOSEPH | DAVIS | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03302017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170331073 | R1013 | Epigastric pain | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for acute pancreatitis.  To OR for Lap Chole & Cholangiogram., 3-day LOS | 03302017, 03312017, 04012017, 04022017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04032017 | 2017-04-03T10:21:23+00:00 | 251276727092 | 000062813-01 | SUE | WRIGHT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04022017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403016 | I509 | Heart failure, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04022017, 04032017, 04042017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04032017 | 2017-04-03T10:39:25+00:00 | 177243747091 | 000033266-01 | LYNN | DEAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04012017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403025 | I639 | Cerebral infarction, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04012017, 04022017, 04032017, 04042017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04032017 | 2017-04-03T10:54:02+00:00 | 250632477093 | 000001303-01 | FRANCES | KENDIG | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04022017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403041 | R079 | Chest pain, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04022017, 04032017, 04042017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04032017 | 2017-04-03T10:59:56+00:00 | 255152467092 | 000102740-01 | GARY | HARDIN | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04022017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403043 | M4310, M545 | Low back pain | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04022017, 04032017, 04042017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03312017 | 2017-03-31T08:56:12+00:00 |  | 000011912-01 | CLARENCE | RAVER | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03302017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403088 | I509 | Heart failure, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with increased SOB. CXR- interstitial pulmonary edema unchanged from previous imaging. Elevated Troponins  0.464 which have been elevated with previous observation admit last month. Family states the mbr would not want any ischemic w/u.  on 4/1 he had a 36 sec run of VTACH and required a 1:1 sitter for confusion.  Tx:  IV Lasix and discussion of Hospice. Submitted to the Medical Director for Determination., The Medical Director determined Observation | 03302017, 03312017, 04012017, 04022017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04032017 | 2017-04-03T14:34:56+00:00 |  | 000093610-01 | Vera | Hartley | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03302017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403094 | R410 | Disorientation, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Initially an observation.  I had entered a discharge assessment from Lynzie .  On  4/5/2017 spoke with Patricia Fisher.  This is now an Inpatient.  I have reassigned to Patty  who will need to update discharge assessment., Acute cystitis  acute metabolic encephalopathy  and ARF all responded favorably to IVF's & IV atb's.  , DC'd to home w/ HHC.  2-day LOS | 03302017, 03312017, 04012017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04012017 | 2017-04-01T15:46:55+00:00 |  | 000010870-01 | Anna | Reed | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03312017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170403101 | R109, R197, R319 | Hematuria, unspecified | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Was discharged 3/28 for 9 day stay for PNA. Returned 3/31 with diarrhea possible C-diff and a UTI. Tx w IVF's  IV Levofloxacin and PO Flagyl. | 03312017, 04012017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04042017 | 2017-04-04T09:41:35+00:00 | 250866617093 | 000066168-01 | CARL | PAUGH | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04032017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404011 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04032017, 04042017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04042017 | 2017-04-04T09:49:12+00:00 | 250047637093 | 000010892-01 | ELIZABETH | BYCZEK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04032017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404013 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04032017, 04042017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03312017 | 2017-03-31T14:16:07+00:00 |  | 000107846-01 | Lorraine | Green | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03302017 | 04012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404017 | I4891 | Unspecified atrial fibrillation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Transfer from Diley Ridge with after presenting with n/v/dizziness. Dx of new onset of A-fib with RVR. Denies any CP. Trop neg. EKG without any ST changes.  Placed on Cardizem and Hep gtt.  Plan TEE and Cardioversion 3/31. PO Cardizem and  Xarelto s/p conversion. | 03302017, 03312017, 04012017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 04042017 | 2017-04-04T10:54:58+00:00 | 258329307083 | 000014316-01 | EDWIN | HARPER | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04052017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04032017 | 04042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404035 | Z45010 | Encntr for checking and test of card pacemaker pulse gnrtr | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 04032017, 04042017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 04032017 | 2017-04-03T10:22:14+00:00 |  | 000075795-01 | Maxine | Thomas | GENESIS MEDICAL GRP LLC | 924142 | EDWARD S | UMLAUF | 1942207063 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04052017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03312017 | 04032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404043 | R0902 | Hypoxemia | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03312017, 04012017, 04022017, 04032017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 04032017 | 2017-04-03T15:20:04+00:00 |  | 000076284-01 | Fred | Polk | HOSPITAL MEDICINE SERVIC | 900285 | SHEFALI N | JHAVERI | 1841239571 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04032017 | 04032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404128 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for NSTEMI.  Initial treatment Heparin gtt.  Does not meet Inpatient for ACS., Per Medical Records Dept  patient was transferred to Mount Carmel on 4/3. | 04032017 | Observation | Observation | Approved | 1 |
| 04032017 | 2017-04-03T12:28:20+00:00 |  | 000115911-01 | JOHN | BARRINGER | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04052017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04012017 | 04022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170404133 | J209, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04052017 |  |  |  | 0 | 0 |  | 0 |  |  | COPD exacerbation.  No evidence of prolonged hemodynamic instability. | 04012017, 04022017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |