Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_URGEMERG
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
| 04192018 | 2018-04-19T15:35:51+00:00 |  | 000058632-01 | GREIG | CURTIS | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419071 | G4089, S06329A, S066X9A | Traum subrac hem w LOC of unsp duration, init | ICD10 | 05072018 | 04202018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 04172018 | 2018-04-17T17:26:27+00:00 |  | 000039235-01 | EDELTRAUD | SEIBERT | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05042018 | 05062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418002 | M5116 | Intervertebral disc disorders w radiculopathy, lumbar region | ICD10 | 05082018 | 05042018 | 05062018 | 63047, 22612, 22842 | SEGMENTAL FIXATION (EX. LUQUE TECH.) SEE CPT FOR OTHER EXAMPLES... | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05022018 | 2018-05-02T12:08:45+00:00 |  | 000095874-01 | Shirley | Black | TRAUMA & CRITICAL CARE S | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502070 | S022XXA, S72409A | Unsp fracture of lower end of unsp femur, init for clos fx | ICD10 | 05082018 | 05012018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04272018 | 2018-04-27T12:51:44+00:00 |  | 000106479-01 | Nancy | Taylor | SPECIALIZED ORTHOPAEDICS | 919300 | JOHN M | HATHEWAY | 1043201049 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05042018 | 05052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427038 | M1712, T8484XA | Pain due to internal orthopedic prosth dev/grft, init | ICD10 | 05082018 | 05042018 | 05052018 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05042018 | 2018-05-04T08:41:50+00:00 |  | 000120342-01 | SHARON | BAILEY | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504007 | I4891 | Unspecified atrial fibrillation | ICD10 | 05082018 | 05022018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05042018 | 2018-05-04T14:36:58+00:00 |  | 000064156-01 | LAURA | MCCLUNG | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05052018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504074 | I4891 | Unspecified atrial fibrillation | ICD10 | 05082018 | 05042018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T10:11:35+00:00 |  | 000038646-01 | KENNETH | HERB | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04112018 | 04132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326102 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05082018 | 04112018 | 04132018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03302018 | 2018-03-30T10:56:51+00:00 |  | 000020905-01 | CHARLENE | LAMPRECHT | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04112018 | 04122018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330028 | M12811, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 05082018 | 04112018 | 04122018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04302018 | 2018-04-30T14:36:30+00:00 |  | 000021022-01 | CARROLL | HUNT | SOUND INPATIENT PHYS OF | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501019 | N390, R7881 | Bacteremia | ICD10 | 05082018 | 04292018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05022018 | 2018-05-02T09:11:39+00:00 |  | 000091622-01 | Ida | Barks | HOSPITAL MEDICINE SERVIC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05082018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 05012018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502047 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 05082018 | 05012018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T08:32:48+00:00 |  | 000107812-01 | Harold | Parrett | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413023 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05082018 | 04122018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04152018 | 2018-04-15T12:20:39+00:00 |  | 000044930-01 | MARY | DYER | OHIOHEALTH PHYS GRP | 928546 | JONATHAN M | ENLOW | 1811164619 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416040 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05082018 | 04142018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04162018 | 2018-04-16T12:26:43+00:00 |  | 000096861-01 | Carol | Orahood | OHIOHEALTH PHYS GRP | 906977 | MATTHEW D | RUSSELL | 1992981211 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04152018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416046 | R531 | Weakness | ICD10 | 05082018 | 04152018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04172018 | 2018-04-17T09:33:00+00:00 |  | 000113973-01 | Clyde | Milton | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417063 | J159 | Unspecified bacterial pneumonia | ICD10 | 05082018 | 04142018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T18:52:03+00:00 |  | 000019577-01 | DAVID | DEBOLT | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04152018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418009 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 05082018 | 04152018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T08:22:09+00:00 |  | 000050253-01 | JOHN | TURNER | CENTRAL OH HSPISTS INC | 943199 | BLASE G | HENNESSY | 1386936755 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05082018 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 04242018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425033 | R740 | Nonspec elev of levels of transamns & lactic acid dehydrgnse | ICD10 | 05082018 | 04242018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T13:21:10+00:00 |  | 000107910-01 | Darrell | Cummings | WRIGHT STATE PHYSICIANS | 902808 | MBAGA S | WALUSIMBI | 1295791275 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430091 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 05082018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05022018 | 2018-05-02T09:30:57+00:00 |  | 000042605-01 | GERALDINE | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502050 | N179 | Acute kidney failure, unspecified | ICD10 | 05082018 | 05012018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05032018 | 2018-05-03T12:31:10+00:00 |  | 000025977-01 | PATRICK | HOWARD | SOUND INPATIENT PHYS OF | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503036 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 05082018 | 05022018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05042018 | 2018-05-04T13:14:36+00:00 |  | 000069899-01 | Russell | Karlen III | OSU INTERNAL MED LLC | 916806 | CHARLES R | REDMAN II | 1093937781 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504068 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05082018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05052018 | 2018-05-05T18:31:33+00:00 |  | 000054194-01 | NORMA | TOWT | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507017 | T84021A | Dislocation of internal left hip prosthesis, init encntr | ICD10 | 05082018 | 05042018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04192018 | 2018-04-19T10:34:39+00:00 |  | 000047804-01 | ORLA | UHRICK | HMP OF FRANKLIN CTY LTD | 911142 | JILL | BARNO | 1922030915 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180425169004.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419032 | I959, R55 | Syncope and collapse | ICD10 | 05082018 | 04182018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T11:02:43+00:00 |  | 000067241-01 | PATSY | VELTHEIMS | UNION COUNTY PHYS CORP | 932727 | ADAM D | BARKER | 1225203896 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420036 | C20, N83202 | UNSPECIFIED OVARIAN CYST, LEFT SIDE | ICD10 | 05082018 | 04302018 | 05032018 | 44207, 58720 | SALPINGO-OOPHORECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04302018 | 2018-04-30T13:37:50+00:00 |  | 000081512-01 | Robert | Strutton | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501005 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05082018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T15:39:48+00:00 |  | 000049146-01 | JOHN | SPURGEON | HOSPITALIST MEDICINE PHY | 907312 | CHARLES | OPPONG | 1902080922 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502012 | N179 | Acute kidney failure, unspecified | ICD10 | 05082018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05062018 | 2018-05-06T17:23:38+00:00 |  | 000008467-01 | BETTY | NOESNER | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05052018 | 05072018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507059 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05082018 | 05052018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T07:26:38+00:00 |  | 000045375-01 | JOE | BROWN | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507071 | I63522 | Cereb infrc d/t unsp occls or stenos of left ant cereb art | ICD10 | 05082018 | 05042018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T15:04:51+00:00 |  | 000100175-01 | RON | KOESTER | S DAYTON ACUTE CARE CNSL | 947012 | KATHERINE E | HOUSE | 1184966293 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502094 | L089, M869 | Osteomyelitis, unspecified | ICD10 | 05082018 | 05012018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T11:49:08+00:00 |  | 000055226-01 | JOE | LITTLE | KNOX COMMUNITY HSP PHYS | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503029 | I499 | Cardiac arrhythmia, unspecified | ICD10 | 05082018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T12:38:05+00:00 |  | 000027037-01 | EARL | LEMON | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05082018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 06072018 | 07072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180503035 | N261 | Atrophy of kidney (terminal) | ICD10 | 05082018 |  |  | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 05072018 | 2018-05-07T07:40:51+00:00 |  | 000075826-01 | Raymond | Hoerst | MERCY HEALTH PHYSICIANS | 921387 | JOHN J | LEISGANG | 1407802754 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05042018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507075 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05082018 | 05042018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T09:53:47+00:00 |  | 000087849-01 | Paul | Dilliard | FAIRFIELD HLTHCARE PROFS | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05082018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05042018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507087 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05082018 | 05042018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T14:22:31+00:00 |  | 000066130-01 | Robert | Roark | ALLIANCE PHYSICIANS INC | 922669 | CHRISTINA R | ANSLINGER | 1831310606 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508029 | R079 | Chest pain, unspecified | ICD10 | 05082018 | 05042018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
