Feature: Process Essette Extract SNF_Inpatient_New_Adds_04162018
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: SNF_Inpatient_New_Adds_04162018
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
|03012018|2018-03-01T10:52:18+00:00||000120798-01|N|Hamilton|MISKEN CONSULTING INC|905904      0003|KENNETH A|WRITESEL|1023078532|ST CATHERINES MANOR OF W|920011      0003|1649294216|ST CATHERINES MANOR OF WASHINGTON CO|1649294216|Skilled Nursing Facility|SNF|Concurrent Review|CONC||ST CATHERINES MANOR OF WASHINGTON CO|04162018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|02272018|04152018|Standard|||02272018|Contract/RUG: 16/RUC (Per MDS) = $7,333.11 Per Diem: $200.00/day x 27 SNF Days = $5,400.00 Total Payment: $12,733.11|0|04152018||04122018|04122018|47|47|$12,733.11||||||||||Concurrent Review|Approved|A180301030|M6281|Muscle weakness (generalized)|ICD10|04162018|02272018|04152018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|1|1|Approved|48|Revenue|RV||||6|
|03022018|2018-03-02T14:39:28+00:00||000015441-01|BONNIE|HANES|ARBOR VIEW FAM MED INC|937109      0001|JOHN E|LLOYD|1740252923|NEWARK CARE AND REHABILI|952419      0002|1255854667|NEWARK CARE AND REHABILITATION|1255854667|Skilled Nursing Facility|SNF|Concurrent Review|CONC||NEWARK CARE AND REHABILITATION|04162018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|02282018|04072018|Standard|||02282018|17/RUB01= $5813.99 18 DAYS @ $200.00= $3600.00 TOTAL: $9413.99|17|04072018||04132018||38|55|$9413.99||||||||||Concurrent Review|Approved|A180302065|E039, E119, I10, K529, M179, E7800|PURE HYPERCHOLESTEROLEMIA, UNSPECIFIED|ICD10|04162018|02282018|04072018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|9413|9413|Approved|39|Revenue|RV||||4|
|03162018|2018-03-16T16:31:38+00:00||000048384-01|THEODORE|TAYLOR|MEDICAL & SURG ASSOC INC|900921      0003|JEREMY R|CAMPBELL|1477533826|DARBY GLENN NURSING & REHABILITATION|918938      0003|1609180322|DARBY GLENN NURSING & REHABILITATION|1609180322|Skilled Nursing Facility|SNF|Concurrent Review|CONC||DARBY GLENN NURSING & REHABILITATION|04162018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|03152018|04132018|Standard|||03152018|Contract/RUG: 16/RUB (Per MDS) = $4,429.71 Per Diem: $200.00/day x 8 SNF Days = $1,600.00 Total Payment: $6,029.71|0|04132018||04162018|04162018|29|29|$6,029.71||||||||||Concurrent Review|Approved|A180319002|S72143D|Displ intertroch fx unsp femr, subs for clos fx w routn heal|ICD10|04162018|03152018|04132018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|6029|6029|Approved|30|Revenue|RV||||1|
|03192018|2018-03-19T11:04:15+00:00||000099682-01|Reed|Jewett|VALLEY MED PRIMARY CARE|917780      0003|CHRISTINE B|WELLER|1811953318|SPRINGFIELD MASONIC COMM|939421      0003|1962510305|SPRINGFIELD MASONIC COMMUNITY|1962510305|Skilled Nursing Facility|SNF|Concurrent Review|CONC||SPRINGFIELD MASONIC COMMUNITY|04162018|Approved|MediGold Essential Care|Fax|SNF|Inpatient|03162018|04142018|Standard|||03162018|Per Diem: $200.00/day x 27 SNF Days = $5,400.00 Wound Vac/Supplies: $65.00/day x 15 days = $975.00 (Per Invoice) Total Payment: $6,375.00|0|04142018||04162018|04162018|27|27|$6,375.00||||||||||Concurrent Review|Approved|A180319037|I5043, S8012XA|Contusion of left lower leg, initial encounter|ICD10|04162018|03162018|04142018|R0022|Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG)|Revenue|6375|6375|Approved|30|Revenue|RV||||1|
|04022018|2018-04-02T12:56:08+00:00||000120638-01|SHARON|SALLY|CEN OHIO GERIATRICS LLC|903552      0003|JONATHAN D|HOLLISTER|1487621652|MOTHER ANGELINE MCCRORY|916665      0003|1730243932|MOTHER ANGELINE MCCRORY MANOR|1730243932|Skilled Nursing Facility|SNF|Concurrent Review|CONC||MOTHER ANGELINE MCCRORY MANOR|04162018|Approved|MediGold Essential Care|Fax|SNF|Inpatient|03302018|04082018|Standard|||03302018|Per MDS: 17/RUA01 = $3214.76|7|04082018||04152018||9|16|||||||||||Concurrent Review|Approved|A180402088|D649, E876, K5660, K9400|Colostomy complication, unspecified|ICD10|04162018|03302018|04082018|RUA01|ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|10|RUGS,HHRG|HP||||9|
|04042018|2018-04-04T08:03:58+00:00||000015235-01|GERTRUDE|RASOR|COLS WEST PARK|936386      0003|MARK A|EVANS|1568479087|WEST PARK CARE CENTER|947403      0005|1720449788|WEST PARK CARE CENTER LLC|1720449788|Skilled Nursing Facility|SNF|Concurrent Review|CONC||WEST PARK CARE CENTER LLC|04162018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|04022018|04052018|Standard|||04022018|Contract/RUG: 17/LD2 (Per MDS) = $4,114.96|34|04052018||04132018||3|37|||||||||||Concurrent Review|Approved|A180404016|S22050D|Wedge comprsn fx T5-T6 vertebra, subs for fx w routn heal|ICD10|04162018|04022018|04052018|LD201|SPECIAL CARE LOW , ADL INDEX 11-14/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|4|RUGS,HHRG|HP||||3|
|04062018|2018-04-06T10:41:30+00:00||000088182-01|Carol|Lancaster|JS AESTHETICS|906812      0005|JODI I|SPERBER|1770569741|PATRIOT RIDGE COMMUNITY|913103      0003|1528041647|PATRIOT RIDGE COMMUNITY|1528041647|Skilled Nursing Facility|SNF|Concurrent Review|CONC||PATRIOT RIDGE COMMUNITY|04162018|Approved|MediGold Classic Preferred|Fax|SNF|Inpatient|04052018|04092018|Standard|||04052018|Contract/RUG: 16/HB1 (Per MDS) = $3,448.45|0|04092018||04162018||4|4|||||||||||Concurrent Review|Approved|A180406020|J9601|Acute respiratory failure with hypoxia|ICD10|04162018|04052018|04092018|HB101|SPECIAL CARE HIGH , ADL INDEX 2-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA.|RUGS,HHRG|1|1|Approved|5|RUGS,HHRG|HP||||4|
