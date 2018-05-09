Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-07_URGEMERG
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
| 05032018 | 2018-05-03T09:46:28+00:00 |  | 000046205-01 | MARTHA | PAKROSNIS | MOUNT CARMEL HLTH PRVDRS | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503017 | M4804, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 05062018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04222018 | 2018-04-22T17:03:44+00:00 |  | 000038056-01 | EMIL | HILES | BAINS, PARAMVIR | 906398 | PARAMVIR | BAINS | 1093990335 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423048 | A419 | Sepsis, unspecified organism | ICD10 | 05062018 | 04212018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T15:46:16+00:00 |  | 000029134-01 | ELIZABETH | WILSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04282018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501031 | A419 | Sepsis, unspecified organism | ICD10 | 05062018 | 04282018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T11:41:00+00:00 |  | 000116638-01 | Marvin | Dew | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 05012018 | 05032018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502053 | J189 | Pneumonia, unspecified organism | ICD10 | 05062018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T15:56:10+00:00 |  | 000037535-01 | PHYLLIS | FROST | COPC CENTRAL OHIO PRIMAR | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05062018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 05012018 | 05052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502087 | I509 | Heart failure, unspecified | ICD10 | 05062018 | 05012018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04122018 | 2018-04-12T17:21:47+00:00 |  | 000054869-01 | JANICE | JENKINS | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413001 | M48062 | M48062 | ICD10 | 05062018 | 05032018 | 05042018 | 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04202018 | 2018-04-20T09:38:26+00:00 |  | 000058164-01 | Diane | Kowal | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420030 | M1611, M25551 | Pain in right hip | ICD10 | 05062018 | 05032018 | 05042018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04262018 | 2018-04-26T09:24:52+00:00 |  | 000080961-01 | Constance | Moody | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05062018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426022 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 05062018 | 05032018 | 05042018 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03162018 | 2018-03-16T17:00:12+00:00 |  | 000090576-01 | Rufus | Logan | OSU SURGERY LLC | 934871 | JEAN E | STARR | 1770530693 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319003 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05072018 | 04252018 | 05042018 | 34703 | EVASC RPR A-UNILAC NDGFT | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 1.0 |
| 03272018 | 2018-03-27T10:15:42+00:00 |  | 000114233-01 | Dawn | Hutchison | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05072018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 05032018 | 05052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327085 | M4326, M48062 | M48062 | ICD10 | 05072018 | 05032018 | 05052018 | 22558, 22853, 22585, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 2, 1, 1, 1 | 1, 2, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04092018 | 2018-04-09T10:45:29+00:00 |  | 000120638-01 | SHARON | SALLY | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04082018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410012 | R0602 | Shortness of breath | ICD10 | 05072018 | 04082018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 04172018 | 2018-04-17T14:39:02+00:00 |  | 000001565-01 | Thomas | Geary | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417128 | I472 | Ventricular tachycardia | ICD10 | 05072018 | 04162018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 04182018 | 2018-04-18T14:32:53+00:00 |  | 000046755-01 | JANET | WARD | MOUNT CARMEL HLTH PRVDRS | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418057 | I739 | Peripheral vascular disease, unspecified | ICD10 | 05072018 | 05032018 | 05042018 | 35371, 37224 | FEM/POPL REVAS W/TLA | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04272018 | 2018-04-27T11:11:13+00:00 |  | 000013458-01 | ERMA | SILVEIRA | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427022 | M549 | Dorsalgia, unspecified | ICD10 | 05062018 | 04262018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04272018 | 2018-04-27T09:30:12+00:00 |  | 000088538-01 | Barbara | Durkin | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427024 | K5780, K668 | Other specified disorders of peritoneum | ICD10 | 05072018 | 04262018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04292018 | 2018-04-29T15:30:19+00:00 |  | 000115348-01 | Michael | Valentine | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430015 | I7771 | Dissection of carotid artery | ICD10 | 05062018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T09:57:16+00:00 |  | 000109262-01 | JUDY | PIERCE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04282018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501013 | M6281 | Muscle weakness (generalized) | ICD10 | 05062018 | 04282018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05012018 | 2018-05-01T10:39:16+00:00 |  | 000038756-01 | Marcia | Chute | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501071 | I639 | Cerebral infarction, unspecified | ICD10 | 05062018 | 04302018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05032018 | 2018-05-03T11:45:18+00:00 |  | 000072606-01 | Claire | Skinner | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503026 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05062018 | 05032018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T09:31:13+00:00 |  | 000118294-01 | JAMES | FAUSNAUGH | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504045 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05062018 | 05032018 | 05042018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 04182018 | 2018-04-18T14:25:14+00:00 |  | 000119675-01 | VICI | GLEICH | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05042018 | 05052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418055 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 05072018 | 05042018 | 05052018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04232018 | 2018-04-23T13:00:46+00:00 |  | 000119328-01 | Jeweldean | Howington | TRIHEALTH G LLC | 924626 | MAITHILI S | PATIL | 1942278593 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 05072018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04222018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424006 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05072018 | 04222018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04272018 | 2018-04-27T11:05:22+00:00 |  | 000070500-01 | John | Sullivan | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427029 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05072018 | 05022018 | 05042018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04302018 | 2018-04-30T07:44:14+00:00 |  | 000064593-01 | PAMELA | DIXON | OSU INTERNAL MED LLC | 908559 | ADAM J | HANJE | 1043361298 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430017 | N179 | Acute kidney failure, unspecified | ICD10 | 05072018 | 04272018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T10:08:59+00:00 |  | 000085423-01 | Leland | Moorehead | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430051 | D62, E876, R079 | Chest pain, unspecified | ICD10 | 05072018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T12:15:32+00:00 |  | 000028070-01 | Magdelean | Branham | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430062 | R112 | Nausea with vomiting, unspecified | ICD10 | 05072018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T17:03:31+00:00 |  | 000106628-01 | DENNIS | ZAHN | SOUND INPATIENT PHYS OF | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501049 | G9340 | Encephalopathy, unspecified | ICD10 | 05072018 | 04292018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04302018 | 2018-04-30T17:33:32+00:00 |  | 000008918-01 | RAYMON | HAGEMAN | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501052 | N10, N139, N179 | Acute kidney failure, unspecified | ICD10 | 05072018 | 04292018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T14:38:46+00:00 |  | 000099216-01 | Paula | Russell | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501061 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05072018 | 04292018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T12:07:02+00:00 |  | 000013013-01 | ALICE | BEOUGHER | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501067 | I639, M6281 | Muscle weakness (generalized) | ICD10 | 05072018 | 04302018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T11:31:31+00:00 |  | 000028484-01 | ALBERT | KOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04302018 | 05042018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502007 | A419, J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05072018 | 04302018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05022018 | 2018-05-02T09:16:42+00:00 |  | 000066892-01 | ALBERTA | BOLANDER | HOSPITALIST MEDICINE PHY | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502022 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 05072018 | 05012018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05012018 | 2018-05-01T19:17:37+00:00 |  | 000056785-01 | MARY | MCBRIDE | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05072018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 05012018 | 05052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502028 | J111, J209, J9601 | Acute respiratory failure with hypoxia | ICD10 | 05072018 | 05012018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05022018 | 2018-05-02T15:35:46+00:00 |  | 000023490-01 | LORENE | HATFIELD | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04282018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502073 | I10, R42, I160 | HYPERTENSIVE URGENCY | ICD10 | 05072018 | 04282018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05022018 | 2018-05-02T17:25:46+00:00 |  | 000004528-01 | GRACIE | DAVIS | MOUNT CARMEL HLTH PRVDRS | 936988 | DONG HUI | KANG | 1144310913 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503008 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 05072018 | 05012018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05032018 | 2018-05-03T11:28:28+00:00 |  | 000041010-01 | EDWARD | LAUDENSCHLAGER | SOUND INPATIENT PHYS OF | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503025 | I639 | Cerebral infarction, unspecified | ICD10 | 05072018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05032018 | 2018-05-03T15:28:57+00:00 |  | 000100683-01 | Loren | Widger | SOUND INPATIENT PHYS OF | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 05022018 | 05052018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503060 | I4891 | Unspecified atrial fibrillation | ICD10 | 05072018 | 05022018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T09:38:04+00:00 |  | 000056792-01 | JAMES | MCLAUGHLIN | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504047 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05072018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T14:01:43+00:00 |  | 000020479-01 | THOMAS | DIXON | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504065 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05072018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T15:47:07+00:00 |  | 000040583-01 | LINDA | ZIMMERMAN | KHN IP MED | 917403 | ADAM A | FERSHKO | 1780833244 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05072018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504081 | J90, R001 | Bradycardia, unspecified | ICD10 | 05072018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T16:10:24+00:00 |  | 000118467-01 | Ruth | Adolph | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05072018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05032018 | 05062018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507008 | R310 | Gross hematuria | ICD10 | 05072018 | 05032018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
