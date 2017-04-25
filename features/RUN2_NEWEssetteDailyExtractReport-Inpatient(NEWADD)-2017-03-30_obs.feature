Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-30_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-30_OBS
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
| 03162017 | 2017-03-16T10:41:05+00:00 |  | 000115624-01 | BETSY | DOBSON | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 03302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 03162017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170321086 | A419, E860, N119 | Chronic tubulo-interstitial nephritis, unspecified | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for Dehydration & Pyelonephritis.  At this time  clinicals support OBS level of care., DC'd to home.  6-day LOS, Add'l clinical support Inpatient for SIRS  hypotensive  tachy  max temp 102.9.  Admitted for sepsis  pyelonephritis  dehydration  renal failure  UTI E.Coli  syncope.  Despite IVF's & IVF's  WBC trended upwards.  ATB's were changed.  Able to be discharged after 6-day LOS., Changed to Inpatient | 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Observation | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03172017 | 2017-03-17T14:16:50+00:00 |  | 000077259-01 | Larry | Brown | TORNIK FAMILY MEDICINE | 905304 | STEVEN J | TORNIK | 1619195153 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Observation | OBSV | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 03302017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03172017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170322018 | K5660 | Unspecified intestinal obstruction | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM for Marsha at MHUC. Requested additional clinical if member continues to be in house otherwise dc date is needed., PC from Deb at MHUC  wants updated clinical submitted for physician review. | 03172017, 03182017, 03192017, 03202017, 03212017 | Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03242017 | 2017-03-24T12:01:11+00:00 |  | 000102108-01 | Angla | Scarano | DAYTON COLON & RECTAL CT | 903985 | AUGUSTO L | MARTINEZ | 1629071337 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 03302017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03212017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324057 | K625 | Hemorrhage of anus and rectum | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | 90 year old was transferred to Beaver Creek for  surgical evaluation  for rectal prolapse. The mbr had a colonoscopy and biopsy done a week prior to admit., Spoke with Beavercreek UR   inquiring about auth the mbr was  admitted on 3/21 and discharged on 3/24/2017 | 03212017, 03222017, 03232017, 03242017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03232017 | 2017-03-23T15:20:51+00:00 |  | 000077721-01 | Okey | Lawson | S DAYTON ACUTE CARE CNSL | 923833 | MUHAMMAD | AKBAR | 1295062099 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03302017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327042 | N390 | Urinary tract infection, site not specified | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Presented with Hyperglycemia and anemia from slow blood loss d/t chronic slow healing R lower extremity wound. Responded well to IVF's and  ATB's. | 03222017, 03232017, 03242017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03282017 | 2017-03-28T11:13:20+00:00 | 250647797086 | 000031902-01 | AVALENE | LEE | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03272017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170328023 | I10 | Essential (primary) hypertension | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03272017, 03282017, 03292017 | Observation, Observation, Observation | Observation, Observation, Observation | Approved, Approved,  | 3, 3, 3 |
| 03282017 | 2017-03-28T13:34:07+00:00 |  | 000108211-01 | Shirley | Dewitt | COSHOCTON COUNTY MEM HSP | 922028 | ROBERT | GWINN | 1831194158 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 03302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03282017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170329029 | I472 | Ventricular tachycardia | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted from PCP for tachycardia  possible PSVT  which resolved to NSR.  Also had elevated troponin and diarrhea.  Remained hemodynamically stable., 1-day LOS, OBS | 03282017, 03292017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03282017 | 2017-03-28T09:53:54+00:00 |  | 000024186-01 | DONALD | SANDER | MARIETTA HLTH CARE PHYS | 933483 | HAYDEN H | TRAN | 1124319272 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03282017 | 03292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170329047 | D62, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  | Admitted for GI bleed.  Hgb 7.  Rcv'd 2 UPRBC's.  Remained hemodynamically stable.  , 1-day LOS, OBS | 03282017, 03292017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03292017 | 2017-03-29T13:05:06+00:00 |  | 000096605-01 | Patricia | Friebe | GENESIS MEDICAL GRP LLC | 905767 | JEFFREY S | LOBEL | 1366465346 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03302017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03272017 | 03282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170330002 | E957#1 | UNKNOWN DESCRIPTION | ICD10 | 03302017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03272017, 03282017 | Observation, Observation | Observation, Observation | Approved, Approved | 2, 2 |
