Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-19_URGEMERG
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
| 02272017 | 2017-02-27T17:04:35+00:00 | 267387807059 | 000075692-01 | Carolyn | Newland | MOUNT CARMEL HEALTH SYS | 920534 |  | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | MOUNT CARMEL HEALTH SYS | 920534 | 1578648085 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CTR REHAB | 03172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170228065 | I639 | Cerebral infarction, unspecified | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Received request via fax from MCW Acute Inpatient Rehab requesting review for admission to Acute Inpatient Rehab  02.28.2017, Reviewed attached clinicals and Powerchart documentation., Approved Admission to MCW Acute Inpatient Rehab for today 02.28.2017, MEDICAL..., 68 y.o obese white female that was originally admitted to our  rehab floor for physical therapy following a left sided intraventricular hemorrhage noted on 02.08.2017 neurology and neurosurgery evaluated patient no surgical intervention was deemed necessary.  HTN uncontrolled on admission to rehab  was on max doses of coreg and losartan and added on Norvasc 5mg on 2.16.17  DC  2.17.17 due to sx hypotension and  held off coreg and losartan . On 2.22.17 patient with syncopal episode likely vasovagal. EKG neg for ischemia.  As of 2.23.17 patient with continued hypotension and to have PICC placed and starting on Zosyn and Vanco. pt found to have acute UTI as well., PHYSICAL THERAPY..., 2.24  Pt does endorse disturbances in vision blurry and/or double vision., Problem List..TX Areas..   Balance  Standing Endurance  Gait  Stair mgmt Weakness  Transfers  Bed mobility.  , 2.27  Pt overall required CGA.min A for safety using RW for support  safety distance limited by c.o bilateral knee pain with activity. decreased strength bilat during LE exercises which affected pt's gait quality and balance., OCCUPATIONAL THERAPY..., 2.24   Pt. requires Minimal assist for upper body  Dependent assist for lower body dressing  with CG assist for functional transfers and mobility with wheeled walker.  Pt c.o blurry and double vision able to demonstrate tracking WFL., 2.27  require CGA/min for transfers secondary to being somewhat unsteady  rushing movement. Pt with limited standing tolerance standing sink-side to wash hands and brush teeth (approx 2:30) with OT pulling chair up behind patient secondary to limited standing toleranc/fatigue; asked on scale of 0-10 how difficult mobility/transfers were  she rated the session an 8., THE PATIENT HAS POTENTIAL TO BENEFIT FROM ACUTE REHABILITATION BEYOND THE  ANTICIPATED BENEFIT FROM ALTERNATIVE LEVELS OF CARE., Please see attached clinicals submitted for review., Left voicemail at MCW Acute Inpatient Rehab notifying approval sent., Notified per mt carmel vista report dated 03.01.17 that pt presented for Admission to Mount Carmel acute Inpatient Rehab on 02.28.17 as was prior authorized | 02282017, 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017 | Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab | Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab, Rehab | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 |
| 02282017 | 2017-02-28T13:15:21+00:00 |  | 000049332-01 | ALTA | MANSFIELD | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170228067 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03172017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 | Clinical documentation reviewed in PowerChart | 03142017, 03152017, 03162017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 02282017 | 2017-02-28T14:54:33+00:00 |  | 000059430-01 | RICHARD | DAILEY | SOUTHERN OHIO MEDICAL CENTER | 928970 |  | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 03172017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03012017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170302095 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | PCT Barb at Southern Ohio Med Ctr 740-356-6854. Msg left requesting faxed clinical update or disch summary, PCT Callie O'Neil at Southern Ohio Med Ctr 740-356-6854. Msg left requesting faxed clinical update or disch summary., PCF Jessica Runion at Southern Ohio Med Ctr 740-356-6854 via VM left notifying that this member is to be disch tomorrow and does she still need to fax an update., PCT Jessica Runion at Southern Ohio Med Ctr 740-356-6854. Msg left requesting faxed disch summary and a date of disch and disposition called to me., PCF Jessica Runion at Southern Ohio Med Ctr 740-356-6854 notifying that this member is discharging home today with wife. Disch summary will be faxed today or Monday. | 03012017, 03022017, 03032017, 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 |
| 03142017 | 2017-03-14T18:15:37+00:00 | 177766007074 | 000107136-01 | Delorse | Extine | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03172017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 03162017 | 03172017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315030 | S42241A | 4-part fracture of surgical neck of right humerus, init | ICD10 | 03172017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 | Clinical documentation reviewed in PowerChart | 03162017, 03172017 | Inpatient, Inpatient | Inpatient, Inpatient | ,  | 2, 2 |
| 03162017 | 2017-03-16T11:06:06+00:00 | 263498197074 | 000087949-01 | Marlin | Reese | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03172017 | Approved | MediGold Essential Care | Reports | ACO | Inpatient | 03152017 | 03162017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170316033 | I200 | Unstable angina | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart, MEETS ACO CORONARY - N  $11 288.00, MEETS ACO CORONARY - N  $11 288.00 | 03152017, 03162017 | Inpatient, Inpatient | Inpatient, Inpatient | Approved,  | 2, 2 |
| 03152017 | 2017-03-15T11:59:48+00:00 |  | 000099032-01 | Chloris | Morris | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 904635 | 1831157205 | ACUTE REHABILITATION UNIT OF SPRINGF | 1831157205 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | ACUTE REHABILITATION UNIT OF SPRINGF | 03172017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03172017 | 03182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Denied | A170315089 | E875, J189, R195, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03172017 |  |  |  | 0 | 0 |  | 0 |  |  | 91 year old female presented to the ED with h/o chronic renal failure and anemia hgb 6.6  GI consulted GI bleed r/o   other possibility for anemia could be a bone macular disorder mylodyplastic syndrome  CXR revealed patchy lung base opacity may reflect atelectasis or pneumonia.  Mbr transfused with 2 units of PRBC's hgb up to 10.0.  Currently the mbr ambulates 250' CGA with RW. Min assist for standing.  Mbr with loss of balance while standing  unable to correct   requires min assist to recover., OT recommends ARU but if this is not feasible  the mbr could return home with HHC and 24/7 care per family., PT recommends ARU safest  SNF with memory care next safest: would not recommend home yet.  consider HHC once home., Per the Medical Director Scope of services requested would not require physician supervision with face to face visits at least 3x per week to assess patient both medically and functionally. Services requested is available through other covered benefits., PC to SRMC IPRH spoke with Tiffany informed of  IPRH was denial  per our Medical Director and a denial letter would be forthcoming., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03172017 | 2017-03-17T13:27:30+00:00 |  | 000017980-01 | NOAH | SKAGGS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL HEALTH SYS | 920534 | 1578648085 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient Rehabilitation | IP REHAB | Initial Review | INIT |  | MOUNT CARMEL MEDICAL CTR REHAB | 03182017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03182017 | 03192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Initial Review | Denied | A170317022 | R531 | Weakness | ICD10 | 03182017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical reviewed; forward to Med Director for final determination, Recommend:services can be performed in a safe  alternative setting; such as continued 24 hr care at a subacute/skilled nursing and rehab facility., Letter is written in appropriate language with no abbreviations and is therefore approved., Denial Letter mailed to Member @ current listed address , no call to Member; remains in hospital at this time, PCT Polly  Mt Carmel IPHR; conf'd VM notice of denial |  |  |  |  | 0 |
