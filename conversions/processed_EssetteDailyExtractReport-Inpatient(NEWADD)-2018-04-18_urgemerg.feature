Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_URGEMERG
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
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

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
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
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
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

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
| 04132018 | 2018-04-13T08:27:46+00:00 |  | 000059194-01 | FREDDIE | PUCKETT | OHIOHEALTH PHYS GRP | 925660 | HUMA N | NAIKOO | 1467682468 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413021 | N390 | Urinary tract infection, site not specified | ICD10 | 04172018 | 04122018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04132018 | 2018-04-13T14:01:46+00:00 |  | 000006369-01 | DONNA | MITCHELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04172018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04112018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413055 | I959, R55, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 04172018 | 04112018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T08:28:34+00:00 |  | 000034367-01 | TIMOTHY | MOUZON | MOUNT CARMEL HLTH PRVDRS | 917964 | AMBER R | BUSSER | 1861690018 | MOUNT CARMEL WEST PSYCHI | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 04172018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416059 | F259 | Schizoaffective disorder, unspecified | ICD10 | 04172018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04152018 | 2018-04-15T17:09:36+00:00 |  | 000120124-01 | Shirley | Bricker | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04172018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04132018 | 04172018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416052 | E162, I2510, R079 | Chest pain, unspecified | ICD10 | 04172018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04102018 | 2018-04-10T12:21:03+00:00 |  | 000113186-01 | Donald | Lane | COSHOCTON COUNTY MEM HSP | 922028 | ROBERT | GWINN | 1831194158 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 04182018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04102018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410092 | N179 | Acute kidney failure, unspecified | ICD10 | 04182018 | 04102018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T09:41:37+00:00 |  | 000027870-01 | PHYLLIS | BROWN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315015 | Z87828 | Personal history of oth (healed) physical injury and trauma | ICD10 | 04182018 | 03142018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 34.0 |
| 03222018 | 2018-03-22T16:39:25+00:00 |  | 000031074-01 | JONATHAN | MILLER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323012 | I639 | Cerebral infarction, unspecified | ICD10 | 04182018 | 03232018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 04022018 | 2018-04-02T14:08:54+00:00 |  | 000047396-01 | CARL | BARKER | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402100 | I214, R079 | Chest pain, unspecified | ICD10 | 04182018 | 04012018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04042018 | 2018-04-04T11:23:06+00:00 |  | 000053071-01 | MILDRED | MADDEN | DUBLIN SPRINGS PHYSICIAN | 951855 | SHAMSUN | NAHAR | 1972644235 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404065 | F3113 | Bipolar disord, crnt epsd manic w/o psych features, severe | ICD10 | 04182018 | 04042018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04052018 | 2018-04-05T14:35:54+00:00 |  | 000046145-01 | MARY | SHOEMAKER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04122018 | 04132018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405058 | T84498A | Mech compl of internal orth devices, implnt and grafts, init | ICD10 | 04182018 | 04122018 | 04132018 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04092018 | 2018-04-09T14:29:46+00:00 |  | 000079214-01 | Shirley | Williams | KNOX COMMUNITY HOSP GRP | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410028 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 04182018 | 04072018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T13:23:45+00:00 |  | 000085666-01 | Arthur | Pack | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04082018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410032 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04182018 | 04082018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04092018 | 2018-04-09T14:14:29+00:00 |  | 000107671-01 | Aline | Davidson | THE CHRIST HSP MED ASSOC | 949422 | NATHAN | HUDSON | 1629311246 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04182018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04062018 | 04112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410034 | I4891, I639 | Cerebral infarction, unspecified | ICD10 | 04182018 | 04062018 | 04112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04112018 | 2018-04-11T13:29:29+00:00 |  | 000048475-01 | HAROLD | CLIFFORD | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04102018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411067 | C61, C7800, G893, R627 | Adult failure to thrive | ICD10 | 04182018 | 04102018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04112018 | 2018-04-11T16:21:16+00:00 |  | 000103217-01 | Roseann | Canini | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04182018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04102018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412017 | I509 | Heart failure, unspecified | ICD10 | 04182018 | 04102018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04132018 | 2018-04-13T13:37:39+00:00 |  | 000057021-01 | ROGER | MARCUM | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413056 | R55 | Syncope and collapse | ICD10 | 04182018 | 04122018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04132018 | 2018-04-13T14:41:24+00:00 |  | 000057965-01 | KAREN | EATON | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413068 | D649, R0902 | Hypoxemia | ICD10 | 04182018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01252018 | 2018-01-25T08:24:49+00:00 |  | 000055168-01 | RAYMOND | HIEATT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180206155123.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125011 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 04182018 | 01242018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04052018 | 2018-04-05T07:19:08+00:00 |  | 000102723-01 | Nelle | Cotton | THE CHRIST HSP CARDIOVAS | 952697 | JEFFREY M | GRIFFIN | 1013166883 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04102018 | 04142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405001 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04182018 | 04102018 | 04142018 | 32650, 32560 | TREAT LUNG LINING CHEMICALLY,8.18,3.06 | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04092018 | 2018-04-09T08:32:28+00:00 |  | 000120995-01 | PAUL | HOY JR | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409077 | R079 | Chest pain, unspecified | ICD10 | 04182018 | 04072018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04092018 | 2018-04-09T10:44:19+00:00 |  | 000095303-01 | James | Neff | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04072018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410011 | A419, J90, R4182 | Altered mental status, unspecified | ICD10 | 04182018 | 04072018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04092018 | 2018-04-09T16:05:34+00:00 |  | 000087134-01 | Theresa | Haber | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410050 | D6489, I4891, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04182018 | 04092018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04102018 | 2018-04-10T09:41:31+00:00 |  | 000076009-01 | Lucille | Kinsey | MARIETTA HLTH CARE PHYS | 941674 | SRI R | KANAGALINGAM | 1720032386 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410081 | I639, R4182 | Altered mental status, unspecified | ICD10 | 04182018 | 04092018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04102018 | 2018-04-10T09:52:12+00:00 |  | 000100104-01 | Ruth | Brinkel | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04092018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410087 | E871, R220 | Localized swelling, mass and lump, head | ICD10 | 04182018 | 04092018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04122018 | 2018-04-12T10:36:40+00:00 |  | 000075871-01 | Paul | Robinson | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412039 | R109, R339 | Retention of urine, unspecified | ICD10 | 04182018 | 04112018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04122018 | 2018-04-12T12:14:12+00:00 |  | 000063179-01 | JANET | DOWLER | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04132018 | 04142018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412051 | S42222D | 2-part disp fx of surg nk of l humer, 7thD | ICD10 | 04182018 | 04132018 | 04142018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04162018 | 2018-04-16T09:39:45+00:00 |  | 000108231-01 | Sally | Barailloux | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04152018 | 04172018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416072 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T14:51:38+00:00 |  | 000087359-01 | Barbara | Mulvihill | MIAMI VALLEY HSPISTS GRP | 931841 | JEHANGIR A | ANSARI | 1295034064 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417010 | I4891 | Unspecified atrial fibrillation | ICD10 | 04182018 | 04152018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04172018 | 2018-04-17T12:22:22+00:00 |  | 000113706-01 | Mathias | Orndorf Jr | LOWER LIGHTS CHRISTIAN H | 903021 | WILLIAM E | TUREK | 1457457921 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417084 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04182018 | 04112018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T11:31:37+00:00 |  | 000027643-01 | ROGER | HILEMON | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416084 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04182018 | 04132018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04162018 | 2018-04-16T16:00:47+00:00 |  | 000076779-01 | Richard | Wright | DAVID W KOONTZ DO INC | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 04182018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180417015 | I639 | Cerebral infarction, unspecified | ICD10 | 04182018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04172018 | 2018-04-17T08:33:19+00:00 |  | 000095247-01 | Robert | Levy | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 04182018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180417028 | R1031 | Right lower quadrant pain | ICD10 | 04182018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04172018 | 2018-04-17T09:43:10+00:00 |  | 000121234-01 | Lonnie | Bailey | ANTONIO JAIME IMPERIAL | 953630 | ANTONIO JAIME | IMPERIAL JR | 1902867021 | FORREST GENERAL HOSPITAL | 953624 | 1053512087 | FORREST GENERAL HOSPITAL | 1053512087 | Inpatient | IP | Concurrent Review | CONC |  | FORREST GENERAL HOSPITAL | 04182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417052 | K311 | Adult hypertrophic pyloric stenosis | ICD10 | 04192018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T11:24:12+00:00 |  | 000104210-01 | Jay | Bateman | TRIHEALTH H LLC | 942416 | ROBYN L | O BRIEN | 1629050455 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 04182018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417057 | R4182 | Altered mental status, unspecified | ICD10 | 04182018 | 04152018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04172018 | 2018-04-17T11:01:20+00:00 |  | 000065869-01 | HOWARD | GLOVER | RAJ K BHATIA MD INC | 909765 | HARIDAS | BISWAS | 1306850375 | ST LUKES HOSPITAL | 936757 | 0 | ST LUKES HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ST LUKES HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417071 | R079 | Chest pain, unspecified | ICD10 | 04182018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T13:55:49+00:00 |  | 000086285-01 | June | Bruker-Elder | MARIETTA MEM HSP | 932287 | RICHARD E | HOYT | 1609064617 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 04182018 | Denied | MediGold Southeast OH Essential Care | Fax | Not Medically Necessary | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180417102 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 04182018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
