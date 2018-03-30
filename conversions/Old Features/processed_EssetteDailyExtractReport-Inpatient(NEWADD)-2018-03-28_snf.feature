Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<auth_admission_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

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

	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
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
	And the test pauses for "5" seconds
	And in the "hospital_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
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
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds

  And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "3" seconds

	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<service_code>" into the "proc_number" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page if the "<service_code>" equals R0022 I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
	And the test pauses for "3" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
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

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"
	And I input the final reimbursement amount if any is contained in "<final_reimb_amt>"
	And I input the drug doses "<add_drug_doses>" and drug reimbursement "<add_drug_reimb>" if they exist
	And I input the discharge date "<dischrg_date>" and final reimbursement amount two "<final_reimb_amt_2>" if they exist
	And I input the per diem level one "<per_diem_lvl_1>" and per diem level two "<per_diem_lvl_2>" and total days "<total_days>" and total per diem "<total_per_diem>" if they exist


	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03062018 | 2018-03-06T12:15:46+00:00 |  | 000090088-01 | Ruth | Wilson | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD GARDENS REHABI | 949221 | 1235684309 | COUNTRY LANE GARDENS REHABILITATION | 1235684309 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | COUNTRY LANE GARDENS REHABILITATION | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052018 | 03242018 | Standard |  |  | 2018-03-05 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-24 |  | 2018-03-26 | 2018-03-26 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306066 | M6281 | Muscle weakness (generalized) | ICD10 | 03282018 | 03052018 | 03242018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 20 | RUGS,HHRG | HP |  |  |  | 19.0 |
| 03072018 | 2018-03-07T12:39:56+00:00 |  | 000106025-01 | Johnny | Lacy | FAYETTE COUNTY MEM HSP R | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF HILLSBORO OH LLC | 03282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 03062018 | 03132018 | Standard |  |  | 2018-03-06 | Per MDS: 17/RHA01 = $2812.08 | 0 | 2018-03-13 |  | 2018-03-26 | 2018-03-26 | 7 | 7 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307044 | N179 | Acute kidney failure, unspecified | ICD10 | 03282018 | 03062018 | 03132018 | RHA01 | HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 8 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 03072018 | 2018-03-07T14:52:33+00:00 |  | 000009328-01 | RUBY | MOXLEY | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | HOMESTEAD CARE & REHAB C | 908539 | 1174579239 | HOMESTEAD CARE & REHAB CENTER | 1174579239 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HOMESTEAD CARE & REHAB CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03052018 | 03252018 | Standard |  |  | 2018-03-05 | Per MDS: 17/RVA01 = $3586.28 | 0 | 2018-03-25 |  | 2018-03-26 | 2018-03-26 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307074 | I509, Z5189 | Encounter for other specified aftercare | ICD10 | 03282018 | 03052018 | 03252018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 03122018 | 2018-03-12T14:45:43+00:00 |  | 000038793-01 | MARY | ROMANS | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03092018 | 03262018 | Standard |  |  | 2018-03-09 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-03-26 |  | 2018-03-27 | 2018-03-27 | 17 | 17 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312097 | D500, I10, R52, R55, Z471, Z96651, Z7409 | Other reduced mobility | ICD10 | 03282018 | 03092018 | 03262018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 18 | RUGS,HHRG | HP |  |  |  | 17.0 |
| 03132018 | 2018-03-13T15:55:07+00:00 |  | 000048187-01 | MILDRED | MOORE | ASSISTED LIVING MEDICAL | 935040 | DAVID E | WHITT | 1710961438 | CRESTVIEW MANOR NURSING | 936526 | 1811995095 | CRESTVIEW MANOR NURSING HOME | 1811995095 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CRESTVIEW MANOR NURSING HOME | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03122018 | 03242018 | Standard |  |  | 2018-03-12 | Per MDS: 16/RUC01 = $7333.11 | 0 | 2018-03-24 |  | 2018-03-27 | 2018-03-27 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313093 | H05011, H0520, S022XXS, S0232XS, S0231XS, S0240CS | MAXILLARY FRACTURE, RIGHT SIDE, SEQUELA | ICD10 | 03282018 | 03122018 | 03242018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 03152018 | 2018-03-15T15:54:14+00:00 |  | 000067194-01 | Mary | Castle | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | HEARTLAND OF CHILLICOTHE | 905916 | 1689614430 | HEARTLAND OF CHILLICOTHE LLC | 1689614430 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF CHILLICOTHE LLC | 03282018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03132018 | 03192018 | Standard |  |  | 2018-03-13 | Per MDS: 17/LD101 = $3448.45 | 2 | 2018-03-19 |  | 2018-03-26 |  | 6 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315064 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 03282018 | 03132018 | 03192018 | LD101 | SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 7 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 03202018 | 2018-03-20T08:41:14+00:00 |  | 000106746-01 | Pecolia | Dunson | CEN OHIO GERIATRICS LLC | 903552 | JONATHAN D | HOLLISTER | 1487621652 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 03282018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03182018 | 03272018 | Standard |  |  | 2018-03-18 | Per MDS: 17/RUA01 = $3214.76 | 0 | 2018-03-27 |  | 2018-03-27 | 2018-03-27 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320078 | E785, I10, J4530, T8851XA | Hypothermia following anesthesia, initial encounter | ICD10 | 03282018 | 03182018 | 03272018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 12132017 | 2017-12-13T11:06:06+00:00 |  | 000091357-01 | Louise | Arledge | HEALTHSOURCE OF OHIO INC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 12112017 | 03212018 | Standard |  |  | 2017-12-11 | Per MDS: 17/RVC01 = $6306.19 Per diem: $250.00/day x 9 days = $2250.00 Per Diem: $200.00/day x 71 days = $14,200.00 TOTAL PAYMENT = $22,756.19 | 0 | 2018-03-21 |  | 2018-03-28 |  | 100 | 100 | 22756.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213083 | M6281, S82852D | Displ trimalleol fx l low leg, subs for clos fx w routn heal | ICD10 | 03282018 | 12112017 | 03212018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 101 | Revenue | RV |  |  |  | 9.0 |
| 01112018 | 2018-01-11T13:48:37+00:00 |  | 000063862-01 | JACOB | MCNEELY JR | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01102018 | 03242018 | Standard |  |  | 2018-01-10 | Per MDS; 17/RUC01 = $6049.81 Per Diem: $250.00/dy x 53 days = $13,250.00 TOTAL PAYMENT = $19,299.81 | 0 | 2018-03-24 | 2018-03-21 | 2018-03-28 | 2018-03-21 | 73 | 73 | 19299.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111083 | I619, M6281, R1310 | Dysphagia, unspecified | ICD10 | 03282018 | 01102018 | 03242018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 74 | Revenue | RV |  |  |  | 4.0 |
| 01292018 | 2018-01-29T11:10:40+00:00 |  | 000066672-01 | Ruth | Gorrell | CARROLL, FREDERICK C | 900430 | FREDERICK C | CARROLL | 1962431957 | THE LAURELS OF MT VERNON | 904049 | 1316993355 | LAURELS OF MOUNT VERNON | 1316993355 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF MOUNT VERNON | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 01272018 | 01312018 | Standard |  |  | 2018-01-27 | 17/PCA01= $2465.35 | 0 | 2018-01-31 |  | 2018-02-22 |  | 3 | 3 | 2465.35 | 180223158161.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129086 | M4800 | Spinal stenosis, site unspecified | ICD10 | 03282018 | 01272018 | 01312018 | PC101 | REDUCED PHYSICAL FUNCTION , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA | RUGS,HHRG | 1 | 1 | Approved | 5 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:19:11+00:00 |  | 000038168-01 | MONA | BOGGS | DR DIRK LLC | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02062018 | 03262018 | Standard |  |  | 2018-02-06 | Per MDS: 17/RVC = $6306.19 Per Diem: $250.00/day x 9 days = $2250.00 Per Diem: $200.00/day x 16 days = $3200.00 TOTAL PAYMENT = $11,756.19 | 25 | 2018-03-26 |  | 2018-03-28 | 2018-03-23 | 45 | 70 | 11756.19 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208043 | I6200, M6281 | Muscle weakness (generalized) | ICD10 | 03282018 | 02062018 | 03262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 49 | Revenue | RV |  |  |  | 4.0 |
| 03012018 | 2018-03-01T13:39:37+00:00 |  | 000049165-01 | BECKEY | RIDENOUR | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 03282018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 02282018 | 03222018 | Standard |  |  | 2018-02-28 | Per MDS: 17/RVB01 = $5411.86 | 0 | 2018-03-22 |  | 2018-03-27 | 2018-03-28 | 22 | 22 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301050 | C719, Z483 | Aftercare following surgery for neoplasm | ICD10 | 03282018 | 02282018 | 03222018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 23 | RUGS,HHRG | HP |  |  |  | 2.0 |
| 03262018 | 2018-03-26T08:16:33+00:00 |  | 000086183-01 | Sam | Curtis | GENERAL MEDICAL CNSLT | 905523 | JERRY D | SMUCKER | 1740326362 | GREENFIELD AREA MED CTR | 916533 | 1235155425 | GREENFIELD AREA MEDICAL CENTER SNF | 1235155425 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GREENFIELD AREA MEDICAL CENTER SNF | 03282018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 03222018 | 03262018 | Standard |  |  | 2018-03-22 | Swing Bed Daily Rate x 4 days | 0 | 2018-03-26 |  |  | 2018-03-27 | 4 | 4 | Swing bed daily rate x4 days |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326030 | R5381, Z96659 | Presence of unspecified artificial knee joint | ICD10 | 03282018 | 03222018 | 03262018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 5 | Revenue | RV |  |  |  | 4.0 |
