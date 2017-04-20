Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-21_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-21_URGEMERG
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
| 02232017 | 2017-02-23T09:04:04+00:00 | 259101517053 | 000073187-01 | Georgianna | Willis | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 02222017 | 03182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170223006 | A419, I4891, R4182 | Altered mental status, unspecified | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, 74 year old female admitted to Berger ICU for sepsis.. afib.. hypernatremia  metabolic acidosis and AMS. Her sepsis was noted with strep pneumonia positive blood cultures.. Ecoli positive urine. She was intubated at Berger hospital for 4 days requiring pressors and then she was extubated yesterday. After being extubated she became unresponsive and needed to be reintubated. She was noted on admission at Berger with Afib rvr and started on cardizem drip. She converted to NSR but then today she returned to afib rvr. she was previously on Elocon but this was held due to concerns of a low hemoglobin and risk of bleeding. Due to her unresponsiveness and requirement for reintubation it was decided that she would be transferred to St. Anns for increased level of care., The patient is sedated on the ventilator. cont ventilation management with pulm and crit., Consult ID and repeat sputum and blood cultures.,  Afib rvr.. started on Amiodarone drip. Will cont cardiac monitoring and consult cardiology., NG tube.. consult dietary for tube feeding and management, 2.23 Still on full vent support. Cardizem drip.  , 2.24 Patient unchanged overall. She remains on the ventilator. She is still not requiring any sedation. She does seem to get agitated. She will not open her eyes. She will not follow any commands., APPROVED INPT., 3.05   Patient on trach and mechanical ventilation.. restless.. not following commands. | 02222017, 02232017, 02242017, 02252017, 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25 |
| 03012017 | 2017-03-01T10:49:14+00:00 | 256276457059 | 000103283-01 | Melanie | Coplan | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03212017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 02282017 | 03012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170301032 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, Notified per mt carmel vista report dated 03.01.17 that pt was admitted to Inpatient HOSPICE on 02.28.17, Notified per mt carmel vista report dated 03.02.17 that pt EXPIRED on 03.01.17 at 1540 while in Inpatient HOSPICE Status at MCW., Pay as secondary | 02282017, 03012017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 02272017 | 2017-02-27T13:46:45+00:00 |  | 000091241-01 | Mary | Perry | SOUND KENWOOD HSPISTS OF | 928645 | MUHAMMAD R | AHMAD | 1255355319 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02262017 | 03142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170301111 | K5669, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  | Recent admission 1/28/17 to 2/6/17., Clinical received and reviewed., PC to UR dept at MWH. Member remains in house day 5. Messenteric ischemia.  3/2 antio for re-stenting.  Continued NPO. Periods of agitation-IV Haldol and Ativan. Requiring q2hr Morphine for pain., Meets INPT per MediGold guidelines., Fax sent to facility requesting discharge date., Per faxed clinical update  member remains in house | 02262017, 02272017, 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 |
| 03132017 | 2017-03-13T09:50:28+00:00 | 258825107061 | 000031135-01 | VIRGINIA | FORD | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142017 | 03182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170313048 | K869 | Disease of pancreas, unspecified | ICD10 | 03212017 | 48140 | PANCREATECTOMY, DISTAL SUBTOTAL | CPT | 1 | 1 | Approved | 5 | CPT | C4 | Clinical documentation reviewed in PowerChart | 03142017, 03152017, 03162017, 03172017, 03182017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved,  | 5, 5, 5, 5, 5 |
| 03162017 | 2017-03-16T10:10:50+00:00 |  | 000006479-01 | LENA | EVANS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03152017 | 03202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316015 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03152017, 03162017, 03172017, 03182017, 03192017, 03202017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03202017 | 2017-03-20T14:03:27+00:00 | 260948507076 | 000015361-01 | VIRGINIA | WENDEL | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03172017 | 03192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320066 | E876 | Hypokalemia | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03172017, 03182017, 03192017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 03092017 | 2017-03-09T11:33:43+00:00 |  | 000098119-01 | Arthur | Burkhard Jr | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 03212017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 03212017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170309087 | I639 | Cerebral infarction, unspecified | ICD10 | 03212017 |  |  |  | 0 | 0 |  | 0 |  |  | 69 year old active male  presented to University Cincinnati  West Chester (OON) facility with facial droop  slurred speech and right sided weakness .  Imaging confirmed  acute left sided Intracerebral hemorrhage. Neuro feels that this is secondary to rupture of charcoal bouchard aneurysm Neuro signed off as not a surgical candidate. currently with cognitive-linguistic deficits.  The mbr has no past medical or surgical history  the only takes Multivitamins.  The mbr works out 5 days a week e. PLOF  independent with all ADL's . PT/OT/SLP 5 days per week at 3 hour, Per available documentation  the member does not required physician supervision with face to face visits at least three days per week to assess the patient both medically and functionally and to modify the course treatment as needed., PC to provider spoke with Jeanie  informed that IPRH was denied   Jeanie wanted to know the process of peer to peer  gave Jeanie that info she will contact me back with Physician name and number that will complete peer to peer., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
