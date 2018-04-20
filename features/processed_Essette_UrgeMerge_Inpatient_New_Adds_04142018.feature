Feature: Process Essette Extract UrgeMerge_Inpatient_New_Adds_04142018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: UrgeMerge_Inpatient_New_Adds_04142018
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
|02222018|2018-02-22T10:38:55+00:00||000113627-01|Michael|Perdue|ONCOLOGY HEMATOLOGY CARE|923344      0002|JAMES|ESSELL|1265425078|THE JEWISH HOSPITAL|916862      0004|1336478163|THE JEWISH HOSPITAL|1336478163|Inpatient|IP|Concurrent Review|CONC||THE JEWISH HOSPITAL|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|03132018|04112018|Expedited|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180222047|C9310|Chronic myelomonocytic leukemia not achieve remission|ICD10|04132018|03132018|04112018|38240|BONE MARROW TRANSPLANTATION|CPT|1|1|Approved|30|CPT|C4||||1|
|03142018|2018-03-14T16:00:13+00:00||000070929-01|A|Fulford|ORTHOPEDIC ONE INC|903221      0001|BRIAN L|DAVISON|1891778304|MOUNT CARMEL EAST HOSPITAL|936416      0001|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04112018|04122018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180314075|M1612|Unilateral primary osteoarthritis, left hip|ICD10|04132018|04112018|04122018|27130|CHARN MILLER TTL HIP ARTHROPLASTY|CPT|1|1|Approved|2|CPT|C4||||1|
|03152018|2018-03-15T10:28:08+00:00||000042607-01|PAUL|STAGGERS|MOUNT CARMEL HLTH SYS|902935      0005|LOWELL W|CHAMBERS|1801835400|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180315030|K8020|Calculus of gallbladder w/o cholecystitis w/o obstruction|ICD10|04132018|04102018|04122018|47600|CHOLECYSTECTOMY|CPT|1|1|Approved|3|CPT|C4||||0|
|03192018|2018-03-19T07:33:10+00:00||000085293-01|Paul|Proffitt|ER MED PHYS OF CHAMPAIGN|940456      0002|JUSTIN D|COOMES|1730322413|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03172018|03292018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180319051|E871, E876, J189, R4182|Altered mental status, unspecified|ICD10|04132018|03172018|03292018||||0|0||0||||||3|
|03212018|2018-03-21T10:16:23+00:00||000113599-01|Mary|Kabler|CLERMONT INTERNISTS ASSO|924704      0003|SUSHEELA|RAJAN|1144273673|MERCY HEALTH CLERMONT HO|917916      0007|1568562551|MERCY HOSPITAL CLERMONT|1568562551|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL CLERMONT|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03202018|03262018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180321046|J441|Chronic obstructive pulmonary disease w (acute) exacerbation|ICD10|04132018|03202018|03262018||||0|0||0||||||4|
|03212018|2018-03-21T15:16:13+00:00||000058380-01|KAY|THOMPSON|ORTHOPEDIC ONE INC|934876      0001|ROBERT N|STEENSEN|1487647665|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04102018|04122018|Standard||No|||0|||||0|0|||||||||||Concurrent Review|Approved|A180321092|M1711|Unilateral primary osteoarthritis, right knee|ICD10|04132018|04102018|04122018|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|3|CPT|C4||||2|
|03232018|2018-03-23T12:50:25+00:00||000073118-01|Clara|Hinerman|LICKING MEM SURG SRVS|904864      0003|VICTOR F|FERRINI|1629018700|LICKING MEMORIAL HOSPITAL|936497      0003|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04062018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180323033|C183|Malignant neoplasm of hepatic flexure|ICD10|04132018|04062018|04112018|44140|COLECTOMY, PARTIAL, C ANASTOMOSIS|CPT|1|1|Approved|6|CPT|C4||||5|
|03232018|2018-03-23T11:45:43+00:00||000089029-01|Evelyn|Phillips|KETTERING MEDICAL CENTER SYCAMORE|905903      0003||KETTERING MEDICAL CENTER SYCAMORE|1316966518|KETTERING MEDICAL CENTER SYCAMORE|905903      0003|1316966518|KETTERING MEDICAL CENTER SYCAMORE|1316966518|Inpatient|IP|Concurrent Review|CONC||KETTERING MEDICAL CENTER SYCAMORE|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|03222018|03272018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180323045|E871, M542|Cervicalgia|ICD10|04132018|03222018|03272018||||0|0||0||||||3|
|03262018|2018-03-26T12:50:42+00:00||000096004-01|DONALD|MCCORMICK|CLERMONT INTERNISTS ASSO|924704      0003|SUSHEELA|RAJAN|1144273673|MERCY HEALTH CLERMONT HO|917916      0007|1568562551|MERCY HOSPITAL CLERMONT|1568562551|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL CLERMONT|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03232018|03282018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180326049|E871|Hypo-osmolality and hyponatremia|ICD10|04132018|03232018|03282018||||0|0||0||||||3|
|03262018|2018-03-26T15:47:50+00:00||000080712-01|Betty|Smith|MERCY HEALTH PHYSICIANS|902070      0003|C DOUGLAS|PORTER|1720087463|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient Rehabilitation|IP REHAB|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03292018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180326101|G7281|Critical illness myopathy|ICD10|04132018|03292018|04122018||||0|0||0||||||14|
|03262018|2018-03-26T14:22:17+00:00||000042529-01|PATRICIA|SINES|MOUNT CARMEL EAST HOSPITAL|936416      0003||MOUNT CARMEL EAST HOSPITAL|1982784534|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03262018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180327032|A419, J159|Unspecified bacterial pneumonia|ICD10|04132018|03262018|04122018||||0|0||0||||||17|
|03272018|2018-03-27T08:50:08+00:00||000084892-01|Sharon|Knotts|MERCY HEALTH PHYSICIANS|921373      0001|PRASHANTH R|KESAV|1235185950|MERCY WEST HOSPITAL|927002      0003|1912007931|MERCY WEST HOSPITAL|1912007931|Inpatient|IP|Concurrent Review|CONC||MERCY WEST HOSPITAL|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|03262018|04012018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180327071|J189, J441, R0902|Hypoxemia|ICD10|04132018|03262018|04012018||||0|0||0||||||4|
|03282018|2018-03-28T09:35:06+00:00||000082634-01|Sandra|Roberts|HOSPITAL MEDICINE SERVIC|941188      0002|ABDAL R|ALHYARI|1205051570|MADISON COUNTY HOSPITAL|936491      0003|1982710703|MADISON COUNTY HOSPITAL|1982710703|Inpatient|IP|Concurrent Review|CONC||MADISON COUNTY HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03272018|04092018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180329003|A419, J159|Unspecified bacterial pneumonia|ICD10|04132018|03272018|04092018||||0|0||0||||||13|
|03282018|2018-03-28T13:42:24+00:00||000108984-01|Penelope Sue|Rogers|APOGEE MED GRP OHIO INC|947249      0001|YINZHONG|ZHANG|1194147785|ADENA REGIONAL MED CTR|936475      0003|1902839673|ADENA REGIONAL MEDICAL CENTER|1902839673|Inpatient|IP|Concurrent Review|CONC||ADENA REGIONAL MEDICAL CENTER|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|03272018|04062018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180329028|J159, J189|Pneumonia, unspecified organism|ICD10|04132018|03272018|04062018||||0|0||0||||||8|
|03292018|2018-03-29T12:36:31+00:00||000045068-01|ICEL|CRANK|HOSPITALIST MEDICINE PHY|948154      0002|TARAQ A|ATTUMI|1962847186|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03282018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180329079|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|04132018|03282018|04122018||||0|0||0||||||15|
|03302018|2018-03-30T09:32:15+00:00||000044046-01|RICHARD|REYNOLDS|OSU GENERAL INTL MED LLC|926994      0001||OSU GENERAL INTERNAL MEDICINE LLC|1689919599|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03292018|04102018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180330058|R51|Headache|ICD10|04132018|03292018|04102018||||0|0||0||||||12|
|03302018|2018-03-30T11:23:43+00:00||000113478-01|Mendelynn|Fisher|MENTAL HEALTH SERVICES F|907044      0007|KALPANA K|VISHNUPAD|1598755662|HAVEN BEHAVIORAL SRVS OF|927026      0003|1831460229|HAVEN BEHAVIORAL SRVS OF DAYTON LLC|1831460229|IP Behavioral Health|IP BH|Concurrent Review|CONC||HAVEN BEHAVIORAL SRVS OF DAYTON LLC|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|03292018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180330074|F333|Major depressv disorder, recurrent, severe w psych symptoms|ICD10|04132018|03292018|04122018||||0|0||0||||||14|
|03302018|2018-03-30T15:53:00+00:00||000072316-01|Howard|Hinderleider|OBERLANDER & ASSOC INTL|937254      0001|RICHARD D|OBERLANDER|1477581189|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03292018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180330075|I509, S81802A|Unspecified open wound, left lower leg, initial encounter|ICD10|04132018|03292018|04122018||||0|0||0||||||14|
|04022018|2018-04-02T07:28:59+00:00||000090897-01|Harold|Horner|ER MED PHYS OF CHAMPAIGN|926511      0004|MEGAN|LEONARD|1467726323|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|03302018|04042018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180402035|D649, J810, R0600, R0902, R748, R9431|Abnormal electrocardiogram [ECG] [EKG]|ICD10|04132018|03302018|04042018||||0|0||0||||||5|
|04022018|2018-04-02T15:43:39+00:00||000076579-01|Dianne|Carnahan|ORTHOPEDIC ONE INC|903221      0001|BRIAN L|DAVISON|1891778304|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04112018|04122018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180402117|M1711|Unilateral primary osteoarthritis, right knee|ICD10|04132018|04112018|04122018|27447|ARTHROPLASTY KNEE(TOTAL KNEE)|CPT|1|1|Approved|2|CPT|C4||||1|
|04032018|2018-04-03T08:14:58+00:00||000116072-01|Larry|Ward|FAIRFIELD MEDICAL CENTER|936439      0003||FAIRFIELD MEDICAL CENTER|1467433763|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|04132018|Approved|MediGold Southeast OH Essential Care|Fax|Inpatient|Inpatient|04022018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180403054|E060, F1010, J441, R0902|Hypoxemia|ICD10|04132018|04022018|04112018||||0|0||0||||||9|
|04032018|2018-04-03T14:07:53+00:00||000095325-01|Paul|Osborne Jr|MERCY HEALTH PHYSICIANS|914330      0003|DANIEL C|ECKERT|1275742728|MERCY HOSPITAL FAIRFIELD|936431      0003|1467552471|MERCY HOSPITAL FAIRFIELD|1467552471|Inpatient|IP|Concurrent Review|CONC||MERCY HOSPITAL FAIRFIELD|04132018|Approved|MediGold Southwest OH Essential Care|Fax|Inpatient|Inpatient|04102018|04112018|Expedited|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180403069|I350|Nonrheumatic aortic (valve) stenosis|ICD10|04132018|04102018|04112018|33361|REPLACE AORTIC VALVE PERQ|CPT|1|1|Approved|2|CPT|C4||||1|
|04042018|2018-04-04T09:23:55+00:00||000018798-01|RUSSELL|TAYLOR|SOUND INPATIENT PHYS OF|911533      0001||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL ST ANNS HOSPITAL|920157      0003|1417037045|MOUNT CARMEL ST ANNS HOSPITAL|1417037045|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL ST ANNS HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04022018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180404010|R4182|Altered mental status, unspecified|ICD10|04132018|04022018|04122018||||0|0||0||||||10|
|04032018|2018-04-03T14:37:23+00:00||000081086-01|Sharon|Throckmorton|MERCY HEALTH PHYSICIANS|951711      0001|EITHAN|ORLEV SHITRIT|1083020564|THE JEWISH HOSPITAL|916862      0003|1336478163|THE JEWISH HOSPITAL|1336478163|Inpatient|IP|Concurrent Review|CONC||THE JEWISH HOSPITAL|04132018|Approved|MediGold Southwest OH Classic Preferred|Fax|Inpatient|Inpatient|04032018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180404014|E039, E1122, E1142, E11621, E11628, E1169, E785, G4733, I132, I2510, I5022, K219, L02612, L03116, L0|Dependence on renal dialysis|ICD10|04132018|04032018|04122018||||0|0||0||||||3|
|04042018|2018-04-04T08:49:53+00:00||000101936-01|Janice|Henery|NEUROSCIENCE CENTER|945250      0001|DEEPAK K|GULATI|1669797890|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04032018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180404020|I639|Cerebral infarction, unspecified|ICD10|04132018|04032018|04122018||||0|0||0||||||9|
|04062018|2018-04-06T11:07:01+00:00||000033931-01|STANLEY|MELVIN|FAYETTE COUNTY MEM HSP 1|935806      0008|DENNIS A|MESKER|1467446146|FAYETTE COUNTY MEM HSP 1|903662      0005|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Inpatient|IP|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04052018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180406009|M6282, R531|Weakness|ICD10|04132018|04052018|04132018||||0|0||0||||||8|
|04062018|2018-04-06T12:47:12+00:00||000022160-01|ROBERT|MOORE|SOUND INPATIENT PHYS OF|911533      0001||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04052018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180406039|R296, S72002A|Fracture of unsp part of neck of left femur, init|ICD10|04132018|04052018|04122018||||0|0||0||||||7|
|04082018|2018-04-08T11:17:26+00:00||000097992-01|Marty|Williams|GRANT MEDICAL CENTER|936409      0001||GRANT MEDICAL CENTER|1255377149|GRANT MEDICAL CENTER|936409      0003|1255377149|GRANT MEDICAL CENTER|1255377149|Inpatient|IP|Concurrent Review|CONC||GRANT MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04052018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409028|I10|Essential (primary) hypertension|ICD10|04132018|04052018|04122018||||0|0||0||||||4|
|04082018|2018-04-08T08:53:59+00:00||000064750-01|CAROLYN|ELMORE|CENTRAL OH HSPISTS INC|914259      0001|JAMES W|DEVORE JR|1033308333|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04062018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409032|M7989|Other specified soft tissue disorders|ICD10|04132018|04062018|04112018||||0|0||0||||||2|
|04082018|2018-04-08T08:58:46+00:00||000085448-01|Robert|Stein|ORTHOPEDIC ONE INC|948612      0001|RAHUL K|BIYANI|1225355241|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04072018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409033|S72012A|Unsp intracapsular fracture of left femur, init for clos fx|ICD10|04132018|04072018|04122018||||0|0||0||||||3|
|04082018|2018-04-08T09:02:01+00:00||000108984-01|Penelope Sue|Rogers|COPC CENTRAL OHIO PRIMAR|943501      0002|PAUL Y|HE|1346502648|RIVERSIDE METHODIST HSP|936400      0003|1467484972|RIVERSIDE METHODIST HOSPITAL|1467484972|Inpatient|IP|Concurrent Review|CONC||RIVERSIDE METHODIST HOSPITAL|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04062018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409034|J189|Pneumonia, unspecified organism|ICD10|04132018|04062018|04132018||||0|0||0||||||4|
|04082018|2018-04-08T15:37:48+00:00||000073280-01|Larry|Hardbarger|COLS INPATIENT CARE INC|932326      0004|CALEB T|WAGNER|1124310826|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04062018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409053|K922|Gastrointestinal hemorrhage, unspecified|ICD10|04132018|04062018|04122018||||0|0||0||||||6|
|04082018|2018-04-08T14:14:15+00:00||000016716-01|NANCY|DOTSON|MOUNT CARMEL HLTH SYS|941655      0003|ROHIT|CHAND|1285991976|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04062018|04122018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409058|N390, R0602|Shortness of breath|ICD10|04132018|04062018|04122018||||0|0||0||||||6|
|04092018|2018-04-09T10:38:43+00:00||000064537-01|DORA|ROMAINE|COLS INPATIENT CARE INC|942957      0002|CHARLES F|WARE III|1528355922|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04082018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409061|I639|Cerebral infarction, unspecified|ICD10|04132018|04082018|04122018||||0|0||0||||||4|
|04092018|2018-04-09T08:00:20+00:00||000071765-01|Eloise|Strahler|FAYETTE COUNTY MEM HSP 1|935806      0008|DENNIS A|MESKER|1467446146|FAYETTE COUNTY MEM HSP 1|903662      0005|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Inpatient|IP|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409070|K922|Gastrointestinal hemorrhage, unspecified|ICD10|04132018|04092018|04122018||||0|0||0||||||3|
|04092018|2018-04-09T16:01:44+00:00||000001948-01|ROSE|BOERGER|MOUNT CARMEL HLTH SYS|906074      0004|THOMAS F|BRADY|1316980741|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|ACO - Atrial Fib|Inpatient|04062018|04122018|Standard|Atrial Fib - $6,140||||0|||||0|0|||||||||||Concurrent Review|Approved|A180409094|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|04132018|04062018|04122018||||0|0||0||||||6|
|04102018|2018-04-10T07:17:26+00:00||000101566-01|Ronald|Cruikshank|SOUND INPATIENT PHYS OF|907805      0001|HELLEN Y|BIHONEGN|1477503324|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Essential Care|Fax|ACO - Cardiology|Inpatient|04082018|04112018|Standard|Cardiology - $11,288||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410054|I200|Unstable angina|ICD10|04132018|04082018|04112018||||0|0||0||||||3|
|04102018|2018-04-10T08:20:55+00:00||000107164-01|John|Smith|FAYETTE COUNTY MEM HSP 1|903662      0005||FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|FAYETTE COUNTY MEM HSP 1|903662      0005|1508978677|FAYETTE COUNTY MEMORIAL HOSPITAL|1508978677|Inpatient|IP|Concurrent Review|CONC||FAYETTE COUNTY MEMORIAL HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410062|J111, R0902|Hypoxemia|ICD10|04132018|04092018|04132018||||0|0||0||||||4|
|04102018|2018-04-10T11:45:59+00:00||000014285-01|JUANITA|NELSON|MOUNT CARMEL HLTH SYS|942957      0011|CHARLES F|WARE III|1528355922|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04102018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410090|N179|Acute kidney failure, unspecified|ICD10|04132018|04092018|04102018||||0|0||0||||||1|
|04102018|2018-04-10T14:03:19+00:00||000119028-01|Gary|Rife|OSU NEUROPSYCH PHYS SRVS|915942      0001|JULIE A|NIEDERMIER|1013966308|OSU HARDING PROF BHSRVS|907373      0001|1972561892|OSU HARDING PROF BHSRVS|1972561892|IP Behavioral Health|IP BH|Concurrent Review|CONC||OSU HARDING PROF BHSRVS|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04092018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410096|F29|Unsp psychosis not due to a substance or known physiol cond|ICD10|04132018|04092018|04122018||||0|0||0||||||3|
|04102018|2018-04-10T14:16:06+00:00||000105260-01|James|Simmons|ARBOR VIEW FAM MED INC|934801      0001|RICHARD B|SIELSKI|1023080298|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04092018|04112018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180410097|R0602|Shortness of breath|ICD10|04132018|04092018|04112018||||0|0||0||||||2|
|04112018|2018-04-11T10:14:22+00:00||000034694-01|WILLIAM|FOSTER|SOUND INPATIENT PHYS OF|911533      0001||SOUND INPATIENT PHYSICIANS OF OH LLC|1376876755|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04092018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411020|J9312, R935|Abn findings on dx imaging of abd regions, inc retroperiton|ICD10|04132018|04092018|04122018||||0|0||0||||||3|
|04102018|2018-04-10T17:33:16+00:00||000010787-01|MARY|LOUCKS|INDEPENDENT INPATIENT PH|907729      0001|MARK|DELLINGER|1710924410|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|ACO - Pulmonary|Inpatient|04102018|04132018|Standard|Pulmonary - $4,007||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411023|C3490, J159, J441, R0902|Hypoxemia|ICD10|04132018|04102018|04132018||||0|0||0||||||3|
|04112018|2018-04-11T07:06:06+00:00||000061055-01|MICHAEL|GLENN|OSU INTERNAL MED LLC|910383      0001|RAMI|KAHWASH|1053515718|OSU HOSPITAL|936446      0003|1447359997|THE OH STATE UNIVERSITY HOSPITAL|1447359997|Inpatient|IP|Concurrent Review|CONC||THE OH STATE UNIVERSITY HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|03262018|03302018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411042|I509|Heart failure, unspecified|ICD10|04132018|03262018|03302018||||0|0||0||||||4|
|04112018|2018-04-11T10:02:34+00:00||000005145-01|HERBERT|DALES|LICKING MEM HLTH PROF|947717      0001|JESSE M|EWALD|1104196591|LICKING MEMORIAL HOSPITAL|936497      0003|1568446755|LICKING MEMORIAL HOSPITAL|1568446755|Inpatient|IP|Concurrent Review|CONC||LICKING MEMORIAL HOSPITAL|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04132018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411058|I214|Non-ST elevation (NSTEMI) myocardial infarction|ICD10|04132018|04102018|04132018||||0|0||0||||||3|
|04112018|2018-04-11T13:38:33+00:00||000073515-01|Masil|Weller|FAIRFIELD HLTHCARE PROFS|909975      0017|SARAH|BONZA|1487694709|FAIRFIELD MEDICAL CENTER|936439      0003|1467433763|FAIRFIELD MEDICAL CENTER|1467433763|Inpatient|IP|Concurrent Review|CONC||FAIRFIELD MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|Inpatient|Inpatient|04102018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411085|R109|Unspecified abdominal pain|ICD10|04132018|04102018|04122018||||0|0||0||||||2|
|04112018|2018-04-11T15:06:15+00:00||000085979-01|Kenneth|Hopper|MERCY HEALTH PHYSICIANS|907641      0003|TEDROS|ANDOM|1629160262|COMMUNITY MERCY HEALTH P|906699      0005|1144286402|SPRINGFIELD REGIONAL MEDICAL CENTER|1144286402|Inpatient|IP|Concurrent Review|CONC||SPRINGFIELD REGIONAL MEDICAL CENTER|04132018|Approved|MediGold Essential Care|Fax|Inpatient|Inpatient|04072018|04122018|Standard|||||0|||||0|0|||||||||||Concurrent Review|Approved|A180411089|T85691A|Mech compl of intraperitoneal dialysis catheter, init encntr|ICD10|04132018|04072018|04122018||||0|0||0||||||5|
|04112018|2018-04-11T15:58:46+00:00||000102240-01|BARRY|SCHIRG|MOUNT CARMEL REHABILITAT|951409      0001||MOUNT CARMEL REHABILITATION HOSPITAL|1497202485|MOUNT CARMEL REHABILITAT|951409      0003|1497202485|MOUNT CARMEL REHABILITATION HOSPITAL|1497202485|Inpatient Rehabilitation|IP REHAB|Pre-Service|PRE||MOUNT CARMEL REHABILITATION HOSPITAL|04132018|Denied|MediGold Classic Preferred|Fax|Criteria Not Met|Inpatient|||Standard|||||0|||||0|0|||||||||||Pre-Service|Denied|A180412001|G118, R531|Weakness|ICD10|04132018||||||0|0||0||||||0|
|04122018|2018-04-12T10:30:25+00:00||000029894-01|CHARLES|HITE|MOUNT CARMEL WEST PHYS|937001      0009|JASON C|KEITH|1740208511|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04112018|04122018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180412036|K8010|Calculus of gallbladder w chronic cholecyst w/o obstruction|ICD10|04132018|04112018|04122018||||0|0||0||||||1|
|04122018|2018-04-12T13:47:53+00:00||000088012-01|Sharon|Schumacher|CEN OH UROLOGY GRP INC|936050      0001|JEFFREY M|CAREY|1942241260|MOUNT CARMEL EAST HOSPITAL|936416      0003|1982784534|MOUNT CARMEL EAST HOSPITAL|1982784534|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL EAST HOSPITAL|04132018|Approved|MediGold Essential Care|Fax|EIS|Inpatient|04112018|04122018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180412048|N393, N8110, N815, N8182|Incompetence or weakening of pubocervical tissue|ICD10|04132018|04112018|04122018||||0|0||0||||||1|
|04132018|2018-04-13T07:56:51+00:00||000093760-01|James|Southers|MOUNT CARMEL HLTH PRVDRS|949510      0001|MARK W|BYRGE|1053307389|MOUNT CARMEL MEDICAL CTR|920184      0003|1710067376|MOUNT CARMEL MEDICAL CENTER|1710067376|Inpatient|IP|Concurrent Review|CONC||MOUNT CARMEL MEDICAL CENTER|04132018|Approved|MediGold Classic Preferred|Fax|EIS|Inpatient|04112018|04122018|Standard||Yes|||0|||||0|0|||||||||||Concurrent Review|Approved|A180413006|R55|Syncope and collapse|ICD10|04132018|04112018|04122018||||0|0||0||||||1|
