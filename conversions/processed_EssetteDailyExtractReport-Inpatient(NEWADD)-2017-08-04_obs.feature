Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-04_OBS
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
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03212017 | 2017-03-21T09:58:19+00:00 |  | 000115355-01 | Charles | Hale | BESTPRCTS OF W VIRGINA I | 922878 | ANTHONY W | KITCHEN | 1871531715 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08042017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03212017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170330092808.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170323076 | J189, R0902, R509, R51 | Headache | ICD10 | 08042017 | 03212017 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T11:59:43+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719054 | K921 | Melena | ICD10 | 08042017 | 07182017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T10:35:18+00:00 |  | 000083567-01 | Wanda | Greenhill | HOSPITAL MEDICINE SERVIC | 949653 | DEO | MULINDWA | 1881092385 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08042017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170728118877.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724001 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 08042017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07282017 | 2017-07-28T09:41:59+00:00 |  | 000090431-01 | Vesta | Ebright | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 08042017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07282017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728027 | R1010 | Upper abdominal pain, unspecified | ICD10 | 08042017 | 07282017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:24:43+00:00 |  | 000044132-01 | VIRGINIA | DANNER | MED STAFF SERVICES LLC | 907313 | CHARLES N | ONWE | 1831124460 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801015 | N390, R55 | Syncope and collapse | ICD10 | 08042017 | 07302017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T10:01:52+00:00 | 256054257212 | 000049081-01 | LYDIA | LORENZO | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08042017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801040 | K859 | Acute pancreatitis, unspecified | ICD10 | 08042017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T10:06:24+00:00 | 258787057212 | 000027533-01 | Beverly | Noland | ARABELLA HRT LLC | 900697 | JYOTI R | CHAWLA | 1528159241 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801042 | M549 | Dorsalgia, unspecified | ICD10 | 08042017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T11:19:52+00:00 |  | 000074242-01 | Dorothy | Gross | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801044 | D649 | Anemia, unspecified | ICD10 | 08042017 | 07302017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T12:08:14+00:00 |  | 000044488-01 | JAMES | WILLIAMS | PRIMARYONE HEALTH | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801046 | I4891, J939 | Pneumothorax, unspecified | ICD10 | 08042017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08012017 | 2017-08-01T06:48:46+00:00 |  | 000042818-01 | LOIS | MCDERMOTT | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07302017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801097 | E876, I10, R911 | Solitary pulmonary nodule | ICD10 | 08042017 | 07302017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T08:24:48+00:00 |  | 000025447-01 | TAMMY | WEST | SOUND PHYSICIANS OF OHI | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801103 | R296 | Repeated falls | ICD10 | 08042017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08022017 | 2017-08-02T07:57:11+00:00 |  | 000086530-01 | Reba | Branson | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802056 | N390 | Urinary tract infection, site not specified | ICD10 | 08042017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T08:26:34+00:00 |  | 000100267-01 | Kathy | Schrimpf | WRIGHT STATE PHYSICIANS | 944902 | ALYSSA J | GANS | 1962638080 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802061 | R718, S22080A, S22089A, V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 08042017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T08:30:54+00:00 | 255393437214 | 000032029-01 | DOROTHY | SMITH | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803006 | I4891 | Unspecified atrial fibrillation | ICD10 | 08042017 | 08032017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T09:09:06+00:00 | 250232397215 | 000006080-01 | PHYLLIS | CRABTREE | GREG A WISE MD INC | 909948 |  | GREG A WISE MD INC | 1801018924 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803010 | C786, E871 | Hypo-osmolality and hyponatremia | ICD10 | 08042017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08032017 | 2017-08-03T09:17:47+00:00 |  | 000051762-01 | GEORGE | CRAIGLOW JR | CANYON MEDICAL CENTER | 936056 | CATHERINE O | SPIESS | 1801907522 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803012 | E871, R55 | Syncope and collapse | ICD10 | 08042017 | 08022017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T11:12:39+00:00 |  | 000115194-01 | Billy | Mitchell | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803038 | M6281 | Muscle weakness (generalized) | ICD10 | 08042017 | 08022017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T08:39:28+00:00 |  | 000111009-01 | Cato | Coleman Jr | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803041 | R079 | Chest pain, unspecified | ICD10 | 08042017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T14:36:21+00:00 |  | 000077533-01 | Kenneth | Penwell | ADENA MEDICAL GROUP LLC | 927691 | ROSE | TRESS | 1184944373 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08012017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803073 | R7889 | Finding of oth substances, not normally found in blood | ICD10 | 08042017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08042017 | 2017-08-04T08:24:28+00:00 |  | 000061973-01 | Eileen | Burkhart | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08032017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804004 | E46 | Unspecified protein-calorie malnutrition | ICD10 | 08042017 | 08032017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08042017 | 2017-08-04T09:06:11+00:00 | 250955187215 | 000063745-01 | HOWARD | ROZUM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804012 | I4891 | Unspecified atrial fibrillation | ICD10 | 08042017 | 08032017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08042017 | 2017-08-04T09:13:07+00:00 | 251343077215 | 000025654-01 | ROXIE | BASFORD | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804014 | R1310 | Dysphagia, unspecified | ICD10 | 08042017 | 08032017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08042017 | 2017-08-04T09:27:27+00:00 | 253693527215 | 000104021-01 | Phyllis | Staton | EMERGENCY SERVICES INC | 939769 | RYAN G | HARTMAN | 1730479304 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804018 | R079 | Chest pain, unspecified | ICD10 | 08042017 | 08032017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
