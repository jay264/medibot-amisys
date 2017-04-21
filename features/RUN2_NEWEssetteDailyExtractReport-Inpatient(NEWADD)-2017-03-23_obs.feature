Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-23_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-23_OBS
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
| 03062017 | 2017-03-06T08:53:14+00:00 |  | 000050211-01 | RICHARD | MATHIAS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052017 | 03112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170308066 | J449, R05, R0600 | Dyspnea, unspecified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Review for DOS 3/5 through 3/6., Pmhx CHF COPD HTN presented with increased SOB. CXR with no acute process. EKG with sinus tachycardia.  Blood cx NTD. Lab unremarkable. POX 89% on 2.5L. Tx with IV ATBS  Duonebs., Facility requesting review for IP. Submitted to the Medical Director for determination., The Medical Director determined Observation. | 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017 | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved, Approved,  | 7, 7, 7, 7, 7, 7, 7 |
| 03062017 | 2017-03-06T15:43:10+00:00 |  | 000026269-01 | Bertha | Goldfarb | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042017 | 03072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309031 | R0902 | Hypoxemia | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | P/c to Kristy w/ FMC 740-689-4411 she verified the adm date is 3/4/17.  She said member dc'd on 3/7/17., Pmhx COPD HTN Afib CAD on 2L O2 at home. Presented with worsening SOB. EMS found her unresponsive with POX 60%. Responded to 4L and became alert and oriented. Inital lab revealed compensated Respiratory acidiosis and placed on a Bipap. Lactate of 4.3 which quickly decreased to 0.7.  Other VS unremarkable. Blood cx neg. Urine cx positive for Gram negative. CXR reveals bilaterally LL PNA. Tx with IV ATBs  supplemental O2., The Medical Director determined Observation. | 03042017, 03052017, 03062017, 03072017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03082017 | 2017-03-08T08:40:46+00:00 |  | 000014788-01 | ROMONA | HENDERLY | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062017 | 03112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170309104 | E6601, I509, N390 | Urinary tract infection, site not specified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Multidrug resistant UTI w hx of Bladder CA. Hemodynamically stable. PICC line to continue ATB's outpt., Requesting second review for IP. Submitted to the Medical Director for determination., The Medical director determined Observation. | 03062017, 03072017, 03082017, 03092017, 03102017, 03112017 | Observation, Observation, Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation, Observation, Observation | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03142017 | 2017-03-14T12:40:05+00:00 |  | 000088225-01 | Donald | Spaulding | SOUND KENWOOD HSPISTS OF | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03232017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03132017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170317041 | R001, R079 | Chest pain, unspecified | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | LVMM req initial clinical., UR returned call. | 03132017, 03142017 | Observation, Observation | Observation, Observation | Approved,  | 2, 2 |
| 03202017 | 2017-03-20T13:34:30+00:00 | 252268327077 | 000095538-01 | Nancy | Kalb | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03192017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320059 | K5669 | Other intestinal obstruction | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03202017 | 2017-03-20T18:43:19+00:00 |  | 000107312-01 | Mary | Brooks | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232017 | Interim Approval | MediGold Classic Preferred | Fax | OBS | Inpatient |  |  | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Interim Approval | A170323015 | R0789 | Other chest pain | ICD10 | 03232017 |  |  |  | 0 | 0 |  | 0 |  |  | APPROVAL STATUS NOT AVAILABLE UPON COMPLETION. | 03172017, 03182017 | Observation, Observation | Observation, Observation | Approved,  | 0, 0 |
