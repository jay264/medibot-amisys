Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-27_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-27_OBS
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

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

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
| 02242017 | 2017-02-24T12:11:19+00:00 |  | 000103642-01 | James | Price Jr | MERCY HEALTH PHYSICIANS | 921770 | RICHARD B | FRIES | 1033321567 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03232017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170227090 | R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM for UR dept  requested initial clinical review and discharge date., PC from Sharon Scott UR at MFH  requested clinical review if they want INPT., LVMM requesting initial clinical review., PC from UR staff  member dc'd on 02/24/17 as INPT.  Will fax clinical review., Fax sent req clinical | 03232017, 03242017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03072017 | 2017-03-07T08:41:05+00:00 |  | 000028263-01 | ROBERT | HUPP | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042017 | 03062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309044 | D72829, I10, R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03042017, 03052017, 03062017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03202017 | 2017-03-20T08:30:18+00:00 |  | 000096487-01 | Rose | Smith | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320040 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 63 | CPT | C4 | Per Lynzie in UM Dept  this was an OBS admit (not IP). |  |  |  |  | 0 |
| 03162017 | 2017-03-16T13:33:53+00:00 |  | 000059838-01 | Janet | Swift | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03152017 | 03182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321077 | J189 | Pneumonia, unspecified organism | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with worsening SOB and cough. CXR revealed RLL PNA. WBC 17.9  Temp 101.5. EKG with Afib w RVR and multiple PVCs. Placed on Hep gtt and Cardizem gtt for 24 hours then was reported as being in NSR.  IV ATB's and IVF. Remained hemodynamically stable with no reported evidence of prolonged hypoxemia or end organ damage., Facility requesting MD review for IP. Submitted to the Medical Director for determination., The Medical Director determined Observation. | 03152017, 03162017, 03172017, 03182017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03202017 | 2017-03-20T18:14:48+00:00 |  | 000110285-01 | Billy | Graham | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323096 | I10, I200 | Unstable angina | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | The Medical Director determined IP. | 03182017, 03192017, 03202017, 03212017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03222017 | 2017-03-22T16:17:24+00:00 |  | 000034507-01 | ROBERT | MARTIN | APOGEE MED GRP OHIO INC | 942360 | LINDSAY | ECKLES-HOFFMAN | 1912387218 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03212017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324087 | R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03212017, 03222017, 03232017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03242017 | 2017-03-24T14:40:17+00:00 | 267259087082 | 000013344-01 | NORMA | HEIMLICH | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03232017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324088 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03232017, 03242017, 03252017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03222017 | 2017-03-22T16:16:13+00:00 |  | 000052830-01 | HAROLD | MADRU | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03212017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324092 | R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03212017, 03222017 | Observation, Observation | Observation, Observation | Approved,  | 1, 1 |
| 03232017 | 2017-03-23T09:38:56+00:00 |  | 000074918-01 | Virginia | List | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03222017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324101 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03222017, 03232017, 03242017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03232017 | 2017-03-23T09:39:18+00:00 |  | 000086924-01 | Judith | Lewis | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03232017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324103 | R072 | Precordial pain | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Fax sent req'd clinical and dc date. | 03232017, 03242017 | Observation, Observation | Observation, Observation | Approved,  | 1, 1 |
| 03232017 | 2017-03-23T10:09:37+00:00 |  | 000079200-01 | Carl | Williams | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324109 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03232017 | Observation | Observation | Approved | 1 |
| 03232017 | 2017-03-23T12:02:34+00:00 |  | 000112818-01 | Wayne | Ackerman | KNOX COMMUNITY HSP PHYS | 904052 | GANGARAM | RASA | 1982716379 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03222017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324126 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | STEMI. S/p cath with stents.  Transferred to OSU for open heart surgery.  Admit and DC'd same day. | 03222017 | Observation | Observation | Approved | 1 |
| 03232017 | 2017-03-23T12:10:14+00:00 |  | 000107274-01 | Evelyn | Stevens | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03272017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03222017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324127 | I639, N390 | Urinary tract infection, site not specified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03222017, 03232017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03272017 | 2017-03-27T08:44:01+00:00 |  | 000033568-01 | HELEN | ROBERTS | CEN OH PRIMARY CARE PHYS | 916233 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327007 | I4891 | Unspecified atrial fibrillation | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03242017, 03252017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03272017 | 2017-03-27T08:55:12+00:00 |  | 000003527-01 | ALTON | HALE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327011 | G9340 | Encephalopathy, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03242017, 03252017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03272017 | 2017-03-27T00:00:00+00:00 |  | 000000736-01 | MARY | STOCKDALE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327016 | R1310 | Dysphagia, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03242017, 03252017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03272017 | 2017-03-27T09:09:25+00:00 |  | 000041779-01 | TERRY | COOPERRIDER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327019 | N201 | Calculus of ureter | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03242017, 03252017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03242017 | 2017-03-24T09:22:59+00:00 |  | 000093415-01 | Jerry | Scott | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327075 | J441, J8410, R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03232017, 03242017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
| 03242017 | 2017-03-24T11:01:14+00:00 |  | 000103038-01 | Thomas | Randall | KNOX COMMUNITY HSP PHYS | 931881 | MICHAEL D | HEUMAN | 1457349680 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03192017 | 03192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327088 | K921 | Melena | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03192017 | Observation | Observation | Approved | 1 |
| 03262017 | 2017-03-26T11:40:18+00:00 | 251299797084 | 000083053-01 | HARRY | ABLES | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03252017 | 03262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327092 | R0789 | Other chest pain | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03252017, 03262017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03252017 | 2017-03-25T11:43:44+00:00 | 250907787082 | 000060105-01 | R | PREECE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03242017 | 03262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327095 | N390 | Urinary tract infection, site not specified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03242017, 03252017, 03262017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03252017 | 2017-03-25T11:50:44+00:00 | 254668877083 | 000109915-01 | Matilda | Kittrell | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 03242017 | 03262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327101 | R55 | Syncope and collapse | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03242017, 03252017, 03262017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03242017 | 2017-03-24T14:59:29+00:00 |  | 000083739-01 | Betty | Baxter | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03232017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327107 | J189, R0602 | Shortness of breath | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03232017, 03242017, 03252017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03242017 | 2017-03-24T16:08:19+00:00 |  | 000036708-01 | KEN | ROARK | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03272017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03222017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327111 | R079 | Chest pain, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03222017, 03232017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03242017 | 2017-03-24T16:12:22+00:00 |  | 000048631-01 | DONNA | OYER | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327113 | M6281, R0602 | Shortness of breath | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03222017, 03232017, 03242017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved, Approved | 3, 3, 3 |
| 03272017 | 2017-03-27T10:12:24+00:00 |  | 000081485-01 | Dana | Barnhouse | NURAY RADIOLOGIST INC | 922962 | ROBERT A | LOVE III | 1104820885 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03242017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327170 | Z720 | Tobacco use | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03242017, 03252017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
| 03272017 | 2017-03-27T10:12:40+00:00 |  | 000075259-01 | Viola | Gilg | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03262017 | 03272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327171 | J40 | Bronchitis, not specified as acute or chronic | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03262017, 03272017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
