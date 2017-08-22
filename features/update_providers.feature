Feature: Update Providers
	As an provider entering person
	I want the ability to provider information
	so that I know that information is entered correctly

Scenario Outline: Update Providers
  Given I sign in to the application
  And the test pauses for "3" seconds
  When in the "Home" page I click on "Provider"
  And the test pauses for "3" seconds
  And in the "Provider" page I click on "Provider Maintenance Credentialing"
  And the test pauses for "10" seconds
  And in the "provider_maintenance_credentialing" page I should see the "blank_provider_screen" image
  And I press "Control + F"
	And the test pauses for "10" seconds
	And in the "Provider Maintenance Credentialing" page I enter "<first_name>" into the "First Name" field
	And in the "Provider Maintenance Credentialing" page I enter "<last_name>" into the "Last Name" field
	And I press "Control + S"
  And in the "provider_maintenance_credentialing" I should see the "1_entries_qualified" image



		Examples:

		Opened JSON file

		| practice_name                                                           | caqh_provider_id | first_name | middle_name | last_name| npi_type_1 | npi_type_2 | tax_id    | currently_practicing_flag | address1                |  address2                      | city        | state | zip_code  | accept_new_medicare_patients_flag | phone_number | fax_number | email_address                    | group_name                                         |
		| SEVEN HILLS WOMEN'S HEALTH CENTERS | 11479288 | Susan | J | Holden |  | 1609856525 | 311575051 | 0 | 2245 BAUER RD |  | BATAVIA | OH | 451031977 | 1 | 5132313447 | 5132313761 | pgoforth@shwhc.com | SEVEN HILLS OB/GYN ASSOCIATES INC. |
		| SEVEN HILLS WOMEN'S HEALTH CENTERS | 12332618 | Brooke | Elizabeth | Gillespie |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 11899120 | Amy | S | Hoover |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10795522 | Lisa | G | Horn |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 12791376 | Shannon | M | Horvath |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 11060617 | Ronald | D | Irsik |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 12085232 | Miguel | Angel | Islas-Ohlmayer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills Women's Health Centers | 10793378 | Mary | Kathryn | Jabin |  |  |  |  |  | STE 504 | CINCINNATI |  | 452424400 |  |  |  |  |  |
		| Batesville Urology | 11777417 | Paul | D | Jarvis |  |  |  |  | PO BOX 66 | 24 SIX PINE RANCH ROAD | BATESVILLE |  | 470060066 |  |  |  |  |  |
		| Batesville Urology | 10793458 | ROBERT | ALAN | JASKOT |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Batesville Urology | 11847131 | Cathryn | L | Jenkins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Batesville Urology | 10793493 | Todd | Alan | Jenkins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Batesville Urology | 12659111 | Christina | M | Jepson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Batesville Urology | 13540350 | Jennifer | Lynn | Jerele |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Batesville Urology | 12194015 | Monika | Piyush | Jhaveri |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians Inc | 10793512 | Nishit | G | Jhaveri |  |  |  |  | 3555 OLENTANGY RIVER RD | STE 1080 | COLUMBUS |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10793516 | Shamim | Z | Jilani |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| PrimaryOne Health | 10966917 | Daniela | Elena | Jipa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 12654483 | Luke | A | Johanson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11865335 | Emily | J | Johnson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11943159 | Scott | E | Johnson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11646082 | Laura | D | Johnston |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 12240262 | David | Keith | Jones |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		|  Mount Carmel Columbus Cardiology Consultants | 11713960 | Noah | Jesse | Jones |  |  |  |  | 85 MCNAUGHTEN RD | STE 300 | COLUMBUS |  | 432135112 |  |  |  |  |  |
		|  Mount Carmel Columbus Cardiology Consultants | 12627211 | Tiffany | N | Jones |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		|  Mount Carmel Columbus Cardiology Consultants | 11637052 | Carl | F | Jueng |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		|  Mount Carmel Columbus Cardiology Consultants | 11809016 | Kristi | R | Kaeff |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Clermont Internists Associates, Inc. | 12077054 | Anil | K | Kakumanu |  |  |  |  | 2055 HOSPITAL DR | STE 300 | BATAVIA |  | 451031981 |  |  |  |  |  |
		| The Christ Hospital Medical Assoiates II | 10804277 | Mina | C | Kalfas |  |  |  |  | 1955 DIXIE HWY | STE D | FT WRIGHT |  | 410112882 |  |  |  |  |  |
		| The Christ Hospital Medical Assoiates II | 10821416 | Julie | Gay | Karnes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SEVEN HILLS WOMEN'S HEALTH CENTERS | 10793812 | Michael |  | Karram |  |  |  |  | 10506 MONTGOMERY RD | STE 504 | CINCINNATI |  | 452424400 |  |  |  |  |  |
		| SEVEN HILLS WOMEN'S HEALTH CENTERS | 11644036 | Richard | A | Kasper |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10793829 | Satheesh | Kumar | Kathula |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372808373 | apanstingel@daytonphysicians.com |  |
		| Nephrology Associates of Dayton Inc. | 10793849 | JEFFREY |  | KAUFHOLD |  |  |  |  | 9000 N MAIN ST | STE 328 | ENGLEWOOD |  | 454151185 |  |  |  |  |  |
		| Nephrology Associates of Dayton Inc. | 12728844 | Anupreet |  | Kaur |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11194921 | Gregory | S | Keagy |  | 1386084671 | 560845796 |  |  |  |  |  |  |  | 9106154000 |  |  | CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 10793892 | Karl | K | Kellawan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 12315063 | Casey | W | Kelliher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 10793915 | Elizabeth | A | Kelly |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11623703 | Filix |  | Kencana |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 12547251 | Michael | W | Stogsdill |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 10799974 | Robert | L | Stone |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11621546 | Karen | L | Storer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11496904 | Rita | Marie | Storts |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11453855 | Christina | E | Stout |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 12545700 | Natalia | Anatolievna | Stovall |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 12672988 | Amanda | R | Stover |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 13622022 | Tracy | Reed | Straka |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11931035 | Erin | N | Strcula |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CAPE FEAR VALLEY CARDIOVASCULAR & THORACIC SURGERY | 11507658 | Scott | Howard | Strickler |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Greene Memorial Hospital, Inc. (Community Physicians of Yellow Springs) | 12000027 | Courtney | M | Stroble |  |  |  |  | 888 DAYTON ST STE 200 |  | YELLOW SPGS |  | 453871777 |  |  |  |  |  |
		| Orthopedic & Neurological Consultants, Inc | 10800033 | Desmond | J | Stutzman |  | 1063507226 |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 10800079 | Qixin |  | Sun |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 10800096 | Kevin | Frederick | Sunshein |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11390726 | Krista | A | Sweeney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 12183968 | Sara | A | Sweet |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11610811 | Stacie | L | Sweet |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 10800157 | Daryl | R | Sybert |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 10800193 | Jamal | M | Taha |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 11900739 | ASHLEY |  | TAMASOVICH |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| A T Tamboli MD Inc | 10813545 | Ardeshir | T | Tamboli |  |  |  |  | 222 SCIO RD SE | ROUTE 332 | CARROLLTON |  | 446158521 |  |  |  |  |  |
		| A T Tamboli MD Inc | 12294261 | Vimal | P | Taneja |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| A T Tamboli MD Inc | 10800276 | Ronald | Stuart | Taylor |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| A T Tamboli MD Inc | 10800287 | Brian | Scott | Teater |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel Health System | 12240298 | Kristen | Nicole | Terranova |  |  |  |  | 793 W STATE ST |  | COLUMBUS |  | 432221551 |  |  |  |  |  |
		| Mount Carmel Health System | 10800327 | JOHN | NICHOLAS | TETERIS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel Health System | 10800328 | Bruce | L | Tetirick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel Health System | 12593306 | Gwendolyn | I | Thacker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11754038 | Jigna |  | Thakore |  |  |  |  | 7415 BRANDT PIKE | STE 101 | HUBER HEIGHTS |  | 454243239 |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 11517523 | Roulay |  | Thammavong |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Delaware Chiropractic, LLC | 10800358 | David | Christopher | Thomas |  |  |  |  | 104 W WILLIAM ST |  | DELAWARE |  | 430152305 |  |  |  |  |  |
		| Delaware Chiropractic, LLC | 11587612 | Jeffrey | T | Thorne |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic & Neurological Consultants, Inc. | 10800467 | Larry | T. | Todd |  |  |  |  | 1313 OLENTANGY RIVER RD | STE 180 | COLUMBUS |  | 432123120 |  |  |  |  |  |
		| Orthopedic & Neurological Consultants, Inc. | 12436409 | Emily |  | Treffinger |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic & Neurological Consultants, Inc. | 10800530 | Tracey | Leigh | Trgovac |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 11858690 | Cynthia | B | Tuck |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800574 | Richard | H | Tuck |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800631 | Petre | X | Udrea |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 12215878 | Christine | M | Ungar |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 11965522 | Glenda |  | Updyke |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800701 | Michael | John | Valle |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800768 | Nicholas | C | Varveris |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800807 | Elizabeth | M. | Venard |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11317930 | Bikram |  | Verma Ansil |  |  |  |  | 77 W ELEANOR DR | STE 101 | SPRINGBORO |  | 450661615 |  |  |  | jservis@digestivespecialsits.com |  |
		| Digestive Specialists Inc | 10796721 | JOSHUA | C | NELSON |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc | 12082044 | Vincent | Stuart | Nerone |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc | 10796756 | Michael | D | Newman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc | 12270654 | Christopher | A | Ney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11912624 | Tuan | C | Nguyen |  |  |  |  | 807 FARSON ST | STE 204 | BELPRE |  | 457141069 |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12286408 | William | D | Nickell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10796786 | Christopher | Scott | Nickison |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| The Christ Hospital Medical Associates, LLC | 12004185 | Lisa | A | Niehaus |  |  |  |  | 2123 AUBURN AVE | STE 210 | CINCINNATI |  | 452192906 |  |  |  |  |  |
		| The Christ Hospital Medical Associates, LLC | 11565831 | Neil | Andrew | Niemi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| The Christ Hospital Medical Associates, LLC | 12095639 | Matthew | R | Noordsij-Jones |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Shiloh Family Medicine | 10796842 | Eric | S | Nordin |  | 1255526471 |  |  |  |  |  |  |  |  |  |  |  |  |
		| Shiloh Family Medicine | 11108468 | Stephen | Joseph | Oehlers |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Shiloh Family Medicine | 12243343 | Andrea | N | O'Hanlon |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Shiloh Family Medicine | 10796963 | Patricia | I | Okocha |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc. | 10797051 | Nagaraja | Sharma | Oruganti |  |  |  |  |  |  |  |  |  |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc. | 10797052 | ELIZABETH | ANN | ORWICK |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc. | 11860273 | Corey |  | Orzolek |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc. | 12271591 | Irina | V | Overman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc. | 12717928 | Lisa | M | Ovesen |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 10797171 | MARIOS | P | PANAYIDES |  |  |  |  |  |  |  |  | 455042581 |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 10797210 | JOHN | P | PARASKOS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 11907099 | Sarah | Leigh | Parker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 11881138 | Suzanne | M | Partridge |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 12433890 | Kanan | A | Patel |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SAS SURGERY & VEIN SPECIALISTS | 11390198 | Manisha | A | Patel |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| TriHealth G LLC dba Heritage Family Medicine | 11211452 | Mini | Peterson | Pathrose |  |  |  |  | 435 PARK AVE |  | HAMILTON |  | 450133053 |  |  |  |  |  |
		| TriHealth G LLC dba Heritage Family Medicine | 12274569 | Jessica | M | Patrich |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10797339 | Teressa | J | Patrick |  |  |  |  | 1530 NEEDMORE RD | STE 101 | DAYTON |  | 454143900 |  |  | 9372972208 | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 10797368 | Peter | M | Pavlina |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10491375 | Narayan | S | Peddanna |  |  |  |  | 1530 NEEDMORE RD | STE 101 | DAYTON |  | 454143900 |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 10797431 | Ashok |  | Penmetsa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Memorial Hospital | 12718856 | Angela | M | Perkins |  |  |  |  | 807 FARSON ST | STE 201 | BELPRE |  | 457141069 |  |  |  |  |  |
		| Marietta Memorial Hospital | 10813443 | CHARLES | MARK | PERRY |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel Columbus Cardiology Consultants | 12121475 | Kyle | W | Pfahl |  |  |  |  | 745 W STATE ST | STE 750 | COLUMBUS |  | 432221515 |  |  |  |  |  |
		| Ohio Hospital for Psychiatry | 12273879 | Kathleen |  | Pfeifer |  |  |  |  | 880 GREENLAWN AVE |  | COLUMBUS |  |  |  |  |  |  |  |
		| Ohio Hospital for Psychiatry | 11465024 | Teri | L | Cook |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 10819907 | Stephanie | L | Cotell |  |  |  |  | 925 N HAMILTON RD | STE 100 | GAHANNA |  | 432308709 |  |  |  |  |  |
		| Northeast Dermatology | 10790119 | Steven | D | Cox |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 12564072 | Brent | A | Crane |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 11537630 | Edward | J | Crane |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 10828185 | Michael | A | Cross |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 12533465 | Ernesto | Agustin | Ortiz Cruzado |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 10790224 | Andrew | J | Cusher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 10837101 | Cathy | A | Dailey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 12136582 | Linda | L | Kintz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 12747939 | Colleen | M | Darnell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| FCMH Medical and Surgical Associates | 12468473 | Amy | Noble | Davidson |  |  |  |  | 1450 COLUMBUS AVE | STE 103 | WSHNGTN CT HS |  | 431603701 |  |  |  |  |  |
		| FCMH Medical and Surgical Associates | 12785007 | Ginger | A | Davis |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 11844818 | Kristin | Richelle | Davis |  |  |  |  | 1330 CLARK ST |  | CAMBRIDGE |  | 437259614 |  |  |  |  |  |
		| Muskingum Valley Health Centers | 11507087 | Micah | R | Davis |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10790407 | James | F | Davison |  |  |  |  | 7921 JESSIES WAY |  | FAIRFIELD |  | 450118077 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12674743 | Catherine | A | Earl |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11936226 | Amy | L | Eddy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12684425 | Brooke | B | Edwards |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10790997 | Samia | I | Eid |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11450132 | Sebastine | I | Elendu |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10803223 | Edward | R | Elicker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10828435 | Dalia |  | Elkhairi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10791086 | Jane | L | Emerick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11373623 | Archie | D | Enoch |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10817832 | James | Adam | Eppley |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11449444 | Eric | Anthony Overton | Espinosa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12333272 | Samuel |  | Essandoh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10791177 | David | J | Ettinger |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10791201 | Mark | A | Evans |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 11778335 | Chukwuma | E | Eze |  | 1326210121 |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 12584437 | Edward | A | Faber |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 13624949 | Rachel | Ann | Falsone |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10791264 | Thomas | S | Fanning |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10791265 | William | J | Fanning |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 12167069 | Julie | L | Farrier |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Wellington Orthopaedic and Sports Medicine, Western Ridge | 10791299 | Paul | Joseph | Favorito |  |  |  |  | 6909 GOOD SAMARITAN DR | STE A | CINCINNATI |  | 452475209 |  |  |  |  |  |
		| Valley Gastroenterology & Endoscopy | 12295194 | Kirby | Mae | Fazio |  |  |  |  | 92 N 4TH ST | STE A | MARTINS FERRY |  | 439351600 |  |  |  |  |  |
		| Valley Gastroenterology & Endoscopy | 10791316 | Douglas | E | Feeney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Valley Gastroenterology & Endoscopy | 11588844 | Susan | W | Feeney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Valley Gastroenterology & Endoscopy | 10791329 | Jay | T | Feist |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 11956328 | Bryan | M | Feldner |  |  |  |  | 575 COPELAND MILL RD STE 2F, | ATTN: TINA TRAYLOR | WESTERVILLE |  | 430818977 |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 11989013 | Lisa | Margarita | Fernandez-Seifert |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 11471205 | Michael |  | Fesenmeier |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 11259407 | Gary | J | Key |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 11359782 | Muhammad | Arif | Khan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Comprehensive Foot Care LLC | 10794037 | Ravi | C | Khanna |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kettering Behavioral Professional Group  | 12103242 | Andrew | R | Khavari |  |  |  |  | 5348 LAMME RD |  | MORAINE |  |  |  |  |  |  |  |
		| Gastroenterology Associates of Northwest Ohio LLC | 11665173 | Rizwan | E | Kibria |  | 1689835415 | 262448601 | 1 | 1818 CHAPEL DR | STE C | FINDLAY | OH | 458401344 | 1 | 4194297637 | 4194297641 |  |  |
		| Gastroenterology Associates of Northwest Ohio LLC | 10794103 | Tai-Won |  | Kim |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gastroenterology Associates of Northwest Ohio LLC | 11360418 | Gideon | L | King |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gastroenterology Associates of Northwest Ohio LLC | 13614722 | Virginia | Leah | King |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794164 | Gary | M | Kirsh |  |  |  |  | 10220 ALLIANCE RD |  | BLUE ASH |  | 452424710 |  |  |  |  |  |
		| Compass Emergency Physicians. | 11771805 | Lisa |  | Kiser |  |  |  |  | 85 N GRAND AVE |  | FORT THOMAS |  | 410751793 |  |  |  |  |  |
		| Seven Hills Women's Health Centers | 12103247 | Renee | L | Klee |  | 1609856525 | 311575051 | 0 | 2245 BAUER RD |  | BATAVIA | OH | 451031977 | 1 | 5133213447 | 5132313761 | pgoforth@shwhc.com | Seven Hills Women's Health Centers |
		| Muskingum Valley Health Centers | 11858670 | David | L | Klein |  |  |  |  | 1330 CLARK ST |  | CAMBRIDGE |  | 437259614 |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10794204 | Marc | R | Klein |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 10794216 | James | M | Kleman |  |  |  |  | 7450 HOSPITAL DR | HEART AND LUNG DEPT | DUBLIN |  | 430169642 |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 10794277 | Ramesh | M | Kode |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11360963 | Jhansi | L | Koduri |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 10794392 | Hari | P | Kothegal |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11304452 | Ganapathy |  | Krishnan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794530 | Eric | Joseph | Kuhn |  |  |  |  | 3301 MERCY HEALTH BLVD | STE 525 | CINCINNATI |  | 452111118 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794538 | Dwight | R | Kulwin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794562 | Jerry | M | Kunz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794623 | David | S | Lahue |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12571415 | Stacey | M | Lambert |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11871432 | Katherine | A | Lambes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794675 | Evan | Z | Lang |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794715 | Gary | J | Lau |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10794735 | CHRISTOPHER | D | LAWLEY |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11867826 | Joseph | C | Lawlor |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11646216 | John | P | Layh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12089938 | Christine | A | Leak |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10821807 | Sue | A | Leatherman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc | 12082425 | Tina | X | Lee |  |  |  |  | 3617 HERITAGE CLUB DR |  | HILLIARD |  | 430261313 |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc | 10794826 | Duncan | Eric | Legg |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 13611113 | Kadi | Lepi | Addy |  |  |  |  | 1330 CLARK ST |  | CAMBRIDGE |  | 437259614 |  |  |  |  |  |
		| Muskingum Valley Health Centers | 10800847 | Sandra | J | Victor |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mental Health Services for Clark and Madison Co | 10831294 | Kalpana | K | Vishnupad |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10801002 | Martin | J | Walsh |  |  |  |  | 2000 JOSEPH E SANKER BLVD |  | CINCINNATI |  | 452121979 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12492008 | Jinhui |  | Wang |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12761616 | Michaela | R | Ward |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11211490 | Patrick | John | Ward |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 13524436 | Lindsay | Nicole | Wardle |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12715382 | Amanda |  | Warner |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10801057 | Galen | R | Warren |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10801069 | William | Lloyd | Washington |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10801079 | David | M | Waterhouse |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Hughston Clinic, P.C.. | 12640826 | Benjamin | Collier | Watson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 10801138 | Stephen | A | Weeber |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 10801153 | Paul | A | Wehrum |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 10801199 | Paula | F | Weisenberger |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 10938590 | Kenneth | M | Weisman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 12161697 | Leeana |  | Weiss |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Stephen A. Weeber, DPM | 10801217 | MICHAEL | CHARLES | WELKER |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Weller Health Transitions | 10801219 | Christine | Buchanan | Weller |  |  |  |  | 2283 WAHSUM CIR |  | CENTERVILLE |  | 454596600 |  |  |  |  |  |
		| Weller Health Transitions | 12776707 | Kelly | L | Welsh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Weller Health Transitions | 10831757 | Curtis | D | White |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Weller Health Transitions | 12687451 | Amelia | J | Wiggins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Weller Health Transitions | 11399453 | James | O. | Willey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Weller Health Transitions | 10806895 | James | D | Williams |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12433817 | Kimberly | D | Williams |  |  |  |  | 805 FARSON ST STE 112 |  | BELPRE |  | 457141000 |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11557180 | Ronnie | H | Williamson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Eastern Hills Internal Medicine | 10801430 | David | G | Wilson |  |  |  |  | 8000 5 MILE RD | STE 320 | CINCINNATI |  | 452302188 |  |  |  |  |  |
		| Eastern Hills Internal Medicine | 12332941 | Gloria | J | Wilson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Arthur H Win MD LLC | 10801449 | Arthur | H | Win |  |  |  |  |  |  |  |  |  | 1 |  |  |  |  |
		| Arthur H Win MD LLC | 12219091 | Patrick | M | Wirtz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Arthur H Win MD LLC | 10801494 | Dennis | J | Wiwi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Arthur H Win MD LLC | 12122851 | Hiatt | T | Wolfe |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Alliance Physicians, Inc. (Wayne C. Woodard, MD) | 10801551 | Wayne | Charles | Woodard |  |  |  |  | 50 N PROGRESS DR |  | XENIA |  | 453852666 |  |  |  |  |  |
		| Alliance Physicians, Inc. (Wayne C. Woodard, MD) | 12029487 | Arleen | M | Wuestefeld |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 12100691 | Kelly | L | Wycinski |  |  |  |  | 975 BETHESDA DR |  | ZANESVILLE |  | 437017500 |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11967214 | Jinhong |  | Xing |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 12021293 | Suresh | K | Yadav |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10801630 | Burhan |  | Yanes |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372808366 | 9372808373 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 11409430 | Steve | L | Piatt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10813513 | Robert | R | Pickering |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10797477 | Marc | J | Pliskin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11674066 | Charles | M | Popa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11059513 | Jill | Y | Porter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10797590 | Marios | C | Pouagare |  |  |  |  |  |  |  |  |  |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 12388112 | Christina | A | Prabhu |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11930086 | David |  | Pratt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10797685 | Kenneth | Brian | Pugar |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Purvis Chiropractic | 11935773 | Elizabeth | A | Purvis Archer |  |  |  |  | 111 WEST ST |  | CALDWELL |  | 437241359 |  |  |  |  |  |
		| Purvis Chiropractic | 10797702 | Ambrose | A | Puttmann |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 11088223 | Asif | Q | Qazi |  |  |  |  | 6465 E BROAD ST | STE D | COLUMBUS |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10797705 | Mustafa |  | Quadri |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10797722 | TIMOTHY | PATRICK | QUINN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Radiology Incorporated | 13562728 | Malolan | S | Rajagopalan |  |  |  |  | 793 W STATE ST |  | COLUMBUS |  |  |  |  |  |  |  |
		| Radiology Incorporated | 10797785 | Shanthi |  | Rajaratnam |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Radiology Incorporated | 11361674 | Joe | E | Ramsey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| B.V. Rangaswamy, MD | 10797844 | BILLIAMAGGA |  | RANGASWAMY |  |  |  |  |  |  |  |  | 437251162 |  |  |  |  |  |
		| MUJEEB RANGINWALA MD | 10797847 | MUJEEB | A | RANGINWALA |  |  |  |  |  | STE 102 |  |  | 455051373 |  |  |  |  |  |
		| MUJEEB RANGINWALA MD | 10797849 | Bruce | H | Rank |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MUJEEB RANGINWALA MD | 11517347 | Edward | P | Rapach |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MUJEEB RANGINWALA MD | 13570546 | Raul | A | Raudales |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MUJEEB RANGINWALA MD | 10797912 | Sharrie | Ann | Ray |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven HIlls OB/GYN Associates, Inc. | 12128245 | Bonnie |  | Rebella |  |  |  |  | 10506 MONTGOMERY RD | STE 504 | CINCINNATI |  | 452424400 |  |  |  |  |  |
		| Seven HIlls OB/GYN Associates, Inc. | 12496285 | Andrew | K | Rhinehart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven HIlls OB/GYN Associates, Inc. | 11391333 | Joel | M | Rice |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven HIlls OB/GYN Associates, Inc. | 10798105 | Neil | E | Richard |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11102290 | Steven | Douglas | Richards |  |  |  |  | 400 MATTHEW ST | WOUND CARE CENTER | MARIETTA |  | 457501644 |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11539108 | Kristin | A. | Rinehart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12280097 | Kelli | Suzanne | Riser |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10830544 | Louis |  | Rivello |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12332945 | George | Samy | Rizk |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11892394 | JENNIFER | RAE | ROBERTS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12526682 | Daniel | F | Robertshaw |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11990442 | Eric | W | Fester |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11478833 | Beth | Lynn | Fineran |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10791464 | James | Edward | Fitzpatrick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12291674 | Stephen | R | Fleischer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10791486 | Christopher | M | Fleming |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10791491 | Jeffrey | D | Fley |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10803367 | Robert |  | Flick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11443971 | Douglas | B | Flora |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10791503 | Francis | X | Florez |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10791513 | Wafaa | A | Foad MD |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11757930 | Chad | J | Fogt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11617148 | Craig | W | Forbes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 13605030 | Christopher  | M | Forbush |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 11822662 | Forrest | T | Fornash |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 12331261 | Jonathan | R | Forquer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 11771419 | Marissa | P | Forrest |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 10791546 | Douglas | D | Fosselman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 12469121 | Julia | A | Foster |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 10791587 | Suzann | K | Franer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Greg Frankenfield, LISW, LLC | 11689422 | Gregory | A | Frankenfield |  |  |  |  |  |  |  |  |  |  |  |  | Mariraef@gmail.com |  |
		| Greg Frankenfield, LISW, LLC | 12525777 | Shavon | S | Frankhouser |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Greg Frankenfield, LISW, LLC | 10791599 | Amy | A | Frankowski |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Greg Frankenfield, LISW, LLC | 11638755 | Robin | L | Franz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Greg Frankenfield, LISW, LLC | 10791606 | Percy | L | Frasier |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| OhioHealth Primary Care Physicians - MARK AS SILENT IN ALL DIRECTORIES | 12280453 | Mary | B | Frey |  | 1578545273 | 311351965 | 1 | 10401 Sawmill Pkwy | Ste 40 | Powell | OH | 43065 | 1 | 6147640200 | 6147642782 |  | OhioHealth Physician Group, Inc. |
		| OB/GYN Associates of Lancaster, Inc. | 10791687 | Sarah | L | Froman |  |  |  |  | 135 N EWING ST | STE 201 | LANCASTER |  | 431303378 |  |  |  |  |  |
		| OB/GYN Associates of Lancaster, Inc. | 10791691 | HARRY | NMI | FRONISTA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| OB/GYN Associates of Lancaster, Inc. | 12754958 | Matthew | R | Fulton |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-General, Laparoscopic & Vascular Surgery, Westside | 12543870 | Matthew | J | Funch |  |  |  |  | 3747 W FORK RD |  | CINCINNATI |  | 452477548 |  |  |  |  |  |
		| alan l. gabbard.m.d. | 10791733 | Alan | LANIER | Gabbard |  |  |  |  | 247 S BURNETT RD |  | SPRINGFIELD |  | 455052639 |  |  |  |  |  |
		| alan l. gabbard.m.d. | 11389092 | Elaine | K | Gaglione |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| alan l. gabbard.m.d. | 10791758 | Juanita | R | Gaines |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 11076560 | Leandro | P | Galang |  |  |  |  | 800 PIKE ST | STE 2 | MARIETTA |  | 457503507 |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 10791778 | Jessica | Denise | Gallagher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 10791779 | John | Michael | Gallagher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 10820612 | Marc | T | Galloway |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 11121278 | Maria | Paula | Galupo |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians Inc. | 12127006 | Aisha | B | Gargom |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10791870 | Robert | E | Gaylor |  |  |  |  | 999 BRUBAKER DR | STE 101 | KETTERING |  | 454293588 |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 12332199 | William | Joseph | Gebele |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11606210 | James | R | Gebhart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10791882 | Timothy | John | Geering |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10791939 | Seth | E | Gerkin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10803527 | Jennifer | W | Gerson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10803530 | Robert | J | Gewirtz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11076573 | Seyed Abdi |  | Ghodsi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 12562298 | Wei | Wang | Gibler |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11946186 | Kerri | L | Gibson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10791998 | Frank |  | Giese |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11946545 | Alissa | M | Gilbert |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11759472 | Muhammad | Taimoor | Gill |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10792016 | Gary | L | Gillen |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11562431 | Curtis |  | Gillespie |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 13597245 | Karen | M | Gisslen |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10792047 | Carmella | H | Giulitto |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Kenwood Internal Medicine and Pulmonary | 10792058 | Victor | Philip | Glassman |  |  |  |  | 4760 E GALBRAITH RD | STE 203 | CINCINNATI |  | 452366704 |  |  |  |  |  |
		| Mercy Health - Kenwood Internal Medicine and Pulmonary | 13620259 | Paul | D | Gleason |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Kenwood Internal Medicine and Pulmonary | 10792069 | JOSEPH | JUDE | GLORIOSO |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Kenwood Internal Medicine and Pulmonary | 10792087 | Sharad |  | Goel |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Kenwood Internal Medicine and Pulmonary | 11101299 | Rammy | Schmuel | Gold |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MIAMI VALLEY URGENT CARE LLC | 11801613 | Scott | A | Golde |  |  |  |  | 1403 WAGNER AVE |  | MIAMISBURG |  |  |  |  |  |  |  |
		| Mercy Health-Endocrinology, Cholesterol and Diabetes, Deerfield | 11512983 | Naila | M | Goldenberg |  |  |  |  | 5232 SOCIALVILLE FOSTER RD |  | MASON |  | 450409302 |  |  |  |  |  |
		| Mercy Health-Endocrinology, Cholesterol and Diabetes, Deerfield | 10792108 | DAVID | B | GOLDFARB |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Endocrinology, Cholesterol and Diabetes, Deerfield | 10791899 | Murthy | V | Gollamudi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Endocrinology, Cholesterol and Diabetes, Deerfield | 10792140 | Bijan | J | Goodarzi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Endocrinology, Cholesterol and Diabetes, Deerfield | 10792149 | Richard | Paul | Goodman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 11772215 | Amanda | E | Gordon |  |  |  |  | 4030 HENDERSON RD |  | COLUMBUS |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10792160 | Richard | E | Gordon |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10792163 | ARYEH |  | GORENSTEIN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10792171 | Laurie | E | Gossard |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 12033507 | Rhonda | R | Gottmann |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health- Clermont Psychiatry | 10820817 | Larry | A | Graham |  |  |  |  | 3000 HOSPITAL DR |  | BATAVIA |  | 451031921 |  |  |  |  |  |
		| Fairfield Medical Associates | 10792210 | Michelle | L | Graham |  |  |  |  | 1781 COUNTRYSIDE DR |  | LANCASTER |  | 431301186 |  |  |  |  |  |
		| Fairfield Medical Associates | 10792214 | William | J | Gramann |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 11895931 | Susan | K | Leguire |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 12237571 | Joseph | A | Zacharias |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10801837 | Jeffrey | W | Zipkin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10801856 | EUGENE | DONALD | ZOOG |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 11971870 | Robert | J | Zsoldos |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 12609181 | Eric | J | Bailey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10788097 | Salim | A | Bakali |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10788111 | Scott | R | Baker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10813676 | Rebecca | R | Balaj |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10788120 | JOHN | A | BALAZS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Fairfield Medical Associates | 10788121 | JOHN | DARRELL | BALAZS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10788165 | Charles | L | Bane |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Seven Hills OB/GYN Associates, Inc. | 12137911 | Alzira | B | Leques |  |  |  |  | 10506 MONTGOMERY RD | STE 504 | CINCINNATI |  | 452424400 |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 10794900 | Gary | L | Leroy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 11588846 | Kurt | P | Leuenberger |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 11259435 | Kathryn | A | Levesconte |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 10794921 | Elizabeth | H | Levick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 10794948 | IRVIN |  | LEWIN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 11563277 | Siyun |  | Li |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Seven Hills OB/GYN Associates, Inc. | 10794983 | Brock | Armstrong | Liden |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Belmont Professional Associates | 12192889 | Shaun | E | Roe |  |  |  |  | 66840 BELMONT MORRISTOWN RD |  | BELMONT |  | 437189665 |  |  |  |  |  |
		| Belmont Professional Associates | 11454537 | Emily | N | Roedersheimer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Belmont Professional Associates | 11842470 | Rebecca | Anne | Roedersheimer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Belmont Professional Associates | 11808916 | Martha | J | Rogers |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Belmont Professional Associates | 10798307 | Ralph | R. | Romaker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10798313 | Mark | D | Romer |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 10798326 | JOHN |  | ROOTRING |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12280012 | Ryan | M | Barnes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10788229 | Mark | E | Barnhart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11744092 | Suzanne | Marie | Barnhart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12078838 | Robert | Bryan | Barriger |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12457284 | Lisa | R | Barringer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10788267 | Robert | E | Bartley |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11628507 | Jackson |  | Liu |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12597494 | Ashley | D | Lockhart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10795091 | Harold | V | Loewenstine |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11858681 | Sheryl | L | Ross |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10798372 | Scott | W | Rossio |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology | 11912957 | Andrew | R | Roth |  | 1326072265 |  |  | 1320 W MAIN ST |  | NEWARK |  | 430551822 |  | 2205644218 | 2205644217 |  |  |
		| Licking Memorial Anesthesiology | 10798401 | Michael | B | Rousseau |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology | 10798446 | David | Allen | Ruedrich |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology | 10788275 | Kathleen | R | Bartunek |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| GRANT ANESTHESIA SERVICES | 11921486 | Eric | A | Barua |  |  |  |  | 111 S GRANT AVE |  |  |  | 432154701 |  |  |  |  |  |
		| GRANT ANESTHESIA SERVICES | 12021146 | Charles | W | Longwell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| GRANT ANESTHESIA SERVICES | 10795134 | Marvin | Jose | Lopez |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| John Loughrey MD | 10795153 | John | R | Loughrey |  |  |  |  | 5215 N BEND RD |  | CINCINNATI |  | 452478006 |  |  |  |  |  |
		| John Loughrey MD | 10822007 | Maria de la Luz |  | Lozano |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| John Loughrey MD | 11471829 | Jack | C | Lunderman Jr |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| John Loughrey MD | 10798448 | Peter | G | Ruehlman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| John Loughrey MD | 10798478 | John | Steve | Russ |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| John Loughrey MD | 12087785 | Lawand | A | Saadulla |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10765981 | Tarek | M | Sabagh |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC | 10830662 | James | H | Sabiers |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC | 11046909 | Sarah | F | Sabin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC | 10823378 | John | F | Sacco |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC | 11528503 | Victoria |  | Becker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 10788378 | Kenneth | A | Beckman |  |  |  |  | 450 ALKYRE RUN | STE 100 | WESTERVILLE |  | 430826910 |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 11608876 | Maninder | S | Bedi |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 10788387 | James | Gregory | Beegan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 12266416 | Stephanie | Anne | Beier-Phillips |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 12246896 | Jonathan | M | Beiser |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Comprehensive EyeCare of Central OH Inc | 11848670 | Jed | A | Bell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| PrimaryOne Health | 10788437 | HOWARD | J. | BELLIN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Ohio Vascular Surgery, Inc. | 10795230 | Kenneth | S | Lutter |  |  |  |  | 941 CHATHAM LN | STE 215 | COLUMBUS |  | 432212416 |  |  |  |  |  |
		| Premier Anesthesia of Ohio, LLC | 12679967 | Robin |  | Machado |  |  |  |  | 793 W STATE ST |  | COLUMBUS |  |  |  |  |  |  |  |
		| Premier Anesthesia of Ohio, LLC | 11872202 | Baker |  | Machhadieh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Premier Anesthesia of Ohio, LLC | 11582254 | Ryan | Robert | Maenpa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Premier Anesthesia of Ohio, LLC | 10798539 | Shahzad |  | Safdar |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Infectious Diseases Associates | 10788544 | Jack | Mark | Bernstein |  |  |  |  | 2350 MIAMI VALLEY DR | STE 210 | CENTERVILLE |  | 454594778 |  |  |  |  |  |
		| Infectious Diseases Associates | 11753801 | Jeffrey | L | Bevan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Infectious Diseases Associates | 12091244 | Aaron | L | Bey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 11668020 | Ambareen | A. | Bharmal |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 11753213 | Neil | N | Makadia |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 11855057 | Jennifer | D | Malek |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 10795386 | Inayat | K | Malik |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 10795429 | Mark | A | Manegold |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel HealthProviders, Inc dba MCMG Grove City | 13528559 | Jessica | L | Manly |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 10775688 | Gregory | S | Manning |  |  |  |  | 1505 STONECREEK DR S | STE 102 | PICKERINGTON |  | 431479869 |  |  |  |  |  |
		| Gregory Manning, D.C. | 11753849 | Andrea | G | Santa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 10798650 | Steven | A | Santanello |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 13590718 | Caitlyn |  | Santer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 10805950 | Edgar | R | Santillan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 10798657 | Laurel | J | Santino |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Gregory Manning, D.C. | 11451932 | FAROOQ |  | SATTAR |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11834933 | Rachel | E | Savage |  |  |  |  | 2000 JOSEPH E SANKER BLVD | STE 200 | CINCINNATI |  | 452121979 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11764298 | Sunil | V | Bhat |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12188950 | Rajendra | Sunao | Bhati |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10819198 | William | B | Bibler |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12175948 | Amy | W | Biehl |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Memorial Hospital | 12748992 | Rachel | L | March |  |  |  |  | 151 ANDERSON LN | DEPT OF FAMILY MEDICINE | WATERFORD |  | 457865312 |  |  |  |  |  |
		| Marietta Memorial Hospital | 10795487 | Vlada | W | Mardovin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10795496 | Mark | A | Marinella |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 12130052 | Daniele  | C. Perrelli | Marsh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11959087 | Danielle | Theresa | Martter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11645031 | Colleen | L | Schaub |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10798780 | Peter | A | Scheidler |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11486958 | Stanley | E | Scheidler |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10798784 | Jill | A | Schellhase |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 13578591 | Michael | J | Schetter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12067268 | Christopher | R | Schneider |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12696211 | Vaughn | Daniel | Blackburn |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Robert A. Blank, D.C., Inc. | 10788735 | Robert | A | Blank |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Robert A. Blank, D.C., Inc. | 10788760 | James | D | Bloch |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Robert A. Blank, D.C., Inc. | 11182389 | Lara |  | Blumberg |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Robert A. Blank, D.C., Inc. | 12361788 | Zaw | Min | Bo |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Robert A. Blank, D.C., Inc. | 11616112 | Michael | D. | Bobb |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 12126183 | Steven | Mark | Bobula |  |  |  |  | 615 COPELAND MILL RD STE 2D |  | WESTERVILLE |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 12216956 | Michelle | Ann | Matlock |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10795661 | Suzanne | Frances | Matunis |  |  |  |  | 4700 E GALBRAITH RD | STE 202 | CINCINNATI |  | 452362754 |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 11312123 | JAMES | ANDREW | SCHOEN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10826917 | KIRK | L | SCHOENMAN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10798862 | Timothy | Lee | Schoonover |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10798867 | Carl | G | Schowengerdt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 11470966 | Trista | Kay | Schrickel Feller |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10798932 | Teresa | June | Schutte |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10788855 | Courtney | A | Bonner |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 11478403 | Judith | A. | Boris |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 11565897 | Dennis |  | Bowers |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Blue Ash Family Medicine | 10788927 | Marcia | C | Bowling |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| New Albany Orthopedic Anesthesia LLC | 12283835 | Marc |  | Bowman |  |  |  |  | 7333 SMITHS MILL RD |  | NEW ALBANY |  | 430549291 |  |  |  |  |  |
		| New Albany Orthopedic Anesthesia LLC | 12349184 | Tina | L | McCullough |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| New Albany Orthopedic Anesthesia LLC | 10795806 | Briana | Lynn | McFawn |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| New Albany Orthopedic Anesthesia LLC | 12164950 | Yasmin | Q | McInerney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dematology | 11563282 | Michael | Todd | Mckelvey |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10818464 | B | Robert | Schwartz |  |  |  |  | 2000 JOSEPH E SANKER BLVD | STE 200 | CINCINNATI |  | 452121979 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10798965 | Mark | Wayne | Scott |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 11211471 | Melinda | A | Scott |  |  |  |  | 7980 N MAIN ST |  | DAYTON |  | 454152328 |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 10799000 | John | C | Sefton |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 11469570 | Niranjan |  | Seshadri |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 11883145 | Jeannine | Krupinski | Abbott |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 10787471 | Sally | A | Abbott |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 10787481 | MOURAD |  | ABDELMESSIH |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 11351398 | Alissa | V | Ackelson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 12320749 | Alyson |  | Adams |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 11723920 | Leah | Maderia | Adkins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 12132171 | Preeti |  | Agrawal |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 10787591 | Ibrahim |  | Ahmad |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 12249934 | Usman | D | Ahmad |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic Associates of Dayton | 12161764 | Khadija | L | Ahmed |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MANSFIELD PAIN CLINIC LLC | 12016487 | Rao | K | Ali |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MANSFIELD PAIN CLINIC LLC | 12671553 | Omar |  | Al-Nouri |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| MANSFIELD PAIN CLINIC LLC | 12124856 | William | G | Alter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 11921401 | Abhay | J | Anand |  |  |  |  | 2000 TAMARACK RD |  | NEWARK |  | 430551183 |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 12182877 | Norberto | O | Andaluz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 11060177 | Timothy | W | Anderson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 11180507 | Scott | H | Andrew |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 10787856 | ANANTH |  | ANNAMRAJU |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 10787862 | Gary | M | Ansel |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Anesthesiology & Pain Management | 11196765 | HEIDI | DARNELL | ARBONA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12665219 | Megan | M | Archer |  |  |  |  | 320 E 8TH ST | STE 141 | MARIETTA |  | 457503382 |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10827610 | PHILIP | C | ASCHI |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10788021 | Hafiz | M | Ayub |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12519209 | Alaeddin |  | Ayyad |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11059497 | Julianne |  | Brackin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12246650 | Grant | R | Brame |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Judith L. Bratton M.D. LLC | 10788992 | JUDITH | L | BRATTON |  |  |  |  | 1500 E MAIN ST |  | LANCASTER |  | 431303478 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10788995 | Karl | B | Braun |  |  |  |  | 7794 5 MILE RD | STE 200 | CINCINNATI |  | 452302369 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12532604 | Regina | B | Bray |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10813753 | Denise | A | Brembeck |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11863424 | Debra | A | Brenner |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Hawkins Medical Center | 12006702 | Jessica | Rose | Brent |  | 1427492271 |  |  | 2131 PARK AVE W | STE 200 | ONTARIO |  | 449061226 |  |  |  | IrwinT@tsfhs.org |  |
		| T.J. Bright & R.G. Vargo, D.O.'s, Inc. | 10789037 | Timothy | John | Bright |  |  |  |  | 340 W COSHOCTON ST |  | JOHNSTOWN |  | 430311113 |  |  |  |  |  |
		| T.J. Bright & R.G. Vargo, D.O.'s, Inc. | 10789068 | Betsy | A | Brogan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 10827897 | Jonathan | B | Brooks |  |  |  |  | 2323 W 5TH AVE STE 225 |  | COLUMBUS |  | 432044899 |  |  |  |  |  |
		| Emergency Services, Inc. | 10789092 | Edward | Randolph | Broun |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 12785055 | Aimee | L | Brown |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 11471432 | Dana | K | Brown |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 11348618 | Ellen | Renee | Brown |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 12574065 | Jason | A | Brown |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 11773386 | Jarrod | T | Bruce |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 12758663 | Pamela | R | Bucher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 11517415 | Jeremy | W | Buckley |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Emergency Services, Inc. | 10789228 | Philip | J | Buffington |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Behavioral Health | 12578665 | Darren | L | Burgin |  |  |  |  |  |  |  |  |  |  |  |  |  | Licking Memorial Professional Corporation |
		| Licking Memorial Behavioral Health | 11108481 | Edmund | C. | Burke |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Licking Memorial Behavioral Health | 12581058 | Elizabeth | M | Burneka |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 12291372 | Hayley | R | Burnett |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 12089021 | David | E | Burton |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 13594025 | Sara | Anne | Busch |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 11964258 | Saud |  | Butt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 12021019 | Stacey | Lynn | Cacchio |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 11923313 | Shannon | Campbell | Trotter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Pulmonary Medicine of Dayton | 10789394 | Kevin | G | Campbell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Coshocton County Memorial Hospital Association | 10789497 | Gary | J | Carver |  |  |  |  | 1460 ORANGE ST |  | COSHOCTON |  | 438122229 |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 10789612 | Anthony | T | Chapekis |  |  |  |  | 260 POLARIS PKWY | STE 102 | WESTERVILLE |  | 430828019 |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 10789613 | Deanna | Joy | Chapman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 12460253 | Jessica | L | Cheadle |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 10789715 | Stephen | J | Choban |  |  |  |  | 4605 SAWMILL RD |  | UPPER ARLNGTN |  | 432202246 |  |  |  |  |  |
		| Orthopedic One | 12061239 | Grant |  | Chow |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 12400982 | Jamie | W | Chu |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 10789761 | Cynthia | C | Chua |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 10802764 | Christopher |  | Cirulli |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 12288782 | Elisha | Anne | Clark |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 12017122 | Jacqueline |  | Cleland |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopedic One | 12634813 | Tyler | D | Green |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Internal Medicine, Infectious Disease, Kenwood | 10792267 | Bruce | A | Greenberg |  |  |  |  | 4750 E GALBRAITH RD | STE 207 | CINCINNATI |  | 452366706 |  |  |  |  |  |
		| Mercy Health-Internal Medicine, Infectious Disease, Kenwood | 10792268 | David |  | Greenblatt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Internal Medicine, Infectious Disease, Kenwood | 10814075 | Brian | S | Gregori |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health-Internal Medicine, Infectious Disease, Kenwood | 10792294 | Cathy | Anne | Greiwe |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| West Central Ohio Histology, LLC | 12577100 | Melissa | A | Grilliot |  |  |  |  | 375 N EASTOWN RD | PATHOLOGY DEPT. | LIMA |  |  |  |  |  |  |  |
		| West Central Ohio Histology, LLC | 10826695 | Todd | E | Grime |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| West Central Ohio Histology, LLC | 10792326 | John | K | Grimm |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| West Central Ohio Histology, LLC | 11955857 | Patricia |  | Griswold |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| West Central Ohio Histology, LLC | 11478974 | Jerod | B | Grogg |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10792342 | Howard | M | Gross |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Karen S Gross, LISW-S | 11471636 | Karen | S | Gross |  |  |  |  |  |  |  |  |  |  |  | 7403443479 |  |  |
		| InPatient Consultants of Ohio, Inc. | 10814081 | Robert | T | Grossmann |  |  |  |  | 36123 SCHOOLCRAFT RD |  | LIVONIA |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10792374 | Marta |  | Gryniuk |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 11478986 | Andrew | S | Guinigundo |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 12714597 | Pradeep | R | Gujja |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10792411 | David | J | Gunderman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| InPatient Consultants of Ohio, Inc. | 10814084 | Babu | V | Gupta |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - The Heart Institute, Clermont | 10792428 | Rakesh | K | Gupta |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - The Heart Institute, Clermont | 11621830 | Rachel | E | Gustin |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - The Heart Institute, Clermont | 13526462 | Michael | Stephen | Guy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - The Heart Institute, Clermont | 11589156 | Jennifer | L | Gwilym |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| COSHOCTON COUNTY MEMORIAL HOSPITAL ASSOCIATION | 11989490 | Betty |  | Gwinn-Hall |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10792460 | Eric | O | Haaff |  |  |  |  | 7798 DISCOVERY DR |  | WEST CHESTER |  | 450697745 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 12179998 | Nanci | K | Haecker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10792547 | John | J | Haluschak |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Tri State Urologic Services, PSC, Inc. | 13625450 | Barbara | Bracken | Hankin |  |  |  |  | 2000 JOSEPH E SANKER BLVD | STE 200 | CINCINNATI |  | 452121979 |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 11951636 | Aaron | P | Hanshaw |  |  |  |  | 8940 KINGSRIDGE DR | STE 103 | DAYTON |  | 454581632 |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792625 | PARAMESWARAN |  | HARIHARAN |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 12288570 | Caron | E | Harner |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 13556161 | Jevede | Damean | Harris |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792649 | Melissa | D | Harris |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792656 | Charles | Simeon | Harrison |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 11948289 | Ryan | Kristopher | Harrison |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 13664880 | Rhonda | K. | Hassman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 11753641 | Larry | Todd | Hawkins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792726 | Terresa | L | Hawthorne |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792739 | Robert | F | Hayman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10792745 | Matthew | Thomas | Hazelbaker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 12402522 | Amber | Marie | Healy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 11858664 | Jacqua | L | Heiney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 12741021 | Kelly | A | Heppert |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 10828947 | Leigh | J | Herman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 12185367 | Benjamin | T | Herms |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CD Hanshaw, D.O.,Inc. | 12775327 | Stephanie | M | Herro |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Northeast Dermatology | 10821073 | Joel | B | Herron |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 11591110 | Louis | W | Hevezi |  |  |  |  | 3555 OLENTANGY RIVER RD STE 1080 |  | COLUMBUS |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10792944 | Brian | E | Higgins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Muskingum Valley Health Centers | 13573769 | Cara |  | Hindel |  |  |  |  | 2845 BELL ST |  | ZANESVILLE |  | 437011720 |  |  |  |  |  |
		| Adena Surgical | 11505439 | Wilbur | E | Sever |  |  |  |  | 4439 STATE ROUTE 159 | STE 270 | CHILLICOTHE |  | 456017502 |  |  |  |  |  |
		| Adena Surgical | 11838953 | Binit | Jagdish | Shah |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 10766073 | Ketan | S | Shah |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 12551751 | Parthiv | R | Shah |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 13581759 | Naila |  | Shahid |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Brain & Spine Surgeons of New York, PC | 10799157 | Michael | B | Shannon |  |  |  |  | 21 READE PL |  | POUGHKEEPSIE |  | 126013912 |  |  |  |  |  |
		| Digestive Specialists Inc | 11977954 | Kanan |  | Sharma |  |  |  |  | 3220 BEAVER VU DR | STE 101 | BEAVERCREEK |  | 454346400 |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 10799189 | Allen | D | Shaw |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, Inc. | 11108341 | Brian | F | Shay |  |  |  |  | 350 THOMAS MORE PKWY | STE 200 | CRESTVIEW HLS |  | 410175460 |  |  |  |  |  |
		| Tri State Urologic Services, Inc. | 10799212 | JOSEPH | A | SHEHADI |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 11301717 | Manish | R | Sheth |  | 1902844947 | 203130844 | 1 | 4940 COTTONVILLE RD | STE 600 | JAMESTOWN | OH | 453351522 | 1 | 9372931622 | 9372456308 | apanstingel@daytonphysicians.com |  |
		| Dayton Physicians, LLC  | 10799269 | JOY | D | SHIELDS |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12613782 | Anisasattara |  | Shomo |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Dayton Physicians, LLC  | 12199833 | Brian | P | Showalter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicains, Inc. | 12324404 | Chad | M | Showen |  |  |  |  | 400 MATTHEW ST | STE 306 | MARIETTA |  | 457501656 |  |  |  |  |  |
		| The Center for Cognitive and Behavioral Therapy | 11618679 | Noam |  | Shpancer |  |  |  |  | 1100 BEECHER XING N |  | GAHANNA |  | 432304565 |  |  |  |  |  |
		| The Center for Cognitive and Behavioral Therapy | 12603422 | Brian | Q | Shrimpton |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| The Center for Cognitive and Behavioral Therapy | 10814710 | Deborah | J | Shubouf |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Kidney Care Specialists, LLC. | 12698241 | Jabulani |  | Sidile |  |  |  |  | 105 E WASHINGTON JACKSON RD | STE 4 | EATON |  | 453209789 |  |  |  |  |  |
		| Sifri Eye Center, LTD, LLC | 10799364 | Michael | D | Sifri |  |  |  |  | 2745 ANDERSON FERRY RD |  | CINCINNATI |  | 452382168 |  |  |  |  |  |
		| Sound Physicians | 11685793 | John | Elias | Sifuentes |  |  | 453782550 |  | 5969 E. Broad St | Suite 403 | Columbus |  |  |  |  | 6142346511 |  |  |
		| Sound Physicians | 10810953 | Richard |  | Simman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Sound Physicians | 10799423 | Daljeet |  | Singh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Sound Physicians | 10799428 | Kanwaljit |  | Singh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Sound Physicians | 12278006 | Rajinder | P | Singh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 11077085 | Urmee |  | Siraj |  |  |  |  |  |  |  |  |  |  |  |  | jservis@digestivespecialists.com |  |
		| Digestive Specialists Inc | 11696187 | Judith | H | Skillings |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10799485 | David | M | Skrobot |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 12479290 | Elizabeth | A | Slates |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Digestive Specialists Inc | 10823732 | Gerald | C | Smidebush |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 11884904 | Stephen | Puntenney | Smith |  |  |  |  | 5175 MORSE RD | STE 300 | COLUMBUS |  | 432301370 |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 11390613 | Mark | Alan | Smith |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 11850337 | Michael | Earl | Smith |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 12342799 | CANDICE | FAYE | SNYDER |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 10799631 | Todd | L | Sobol |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 10799655 | Howard | J | Solomon |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| SPS18, LLC, dba Smith Facial Plastics | 10799760 | Michael | Steven | Sprague |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10799769 | Robert | J. | Sprouse |  |  |  |  | 1800 GRANVILLE PIKE |  | LANCASTER |  | 431301043 |  |  |  |  |  |
		| Central Ohio Primary Care Physicians, Inc. | 10458577 | Vasilios | N | Spyropoulos |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mercy Health - Wellington Orthopaedic and Sports Medicine, Blue Ash | 12537124 | Megan | M | Stanfield |  |  |  |  | 4701 CREEK RD | STE 110 | BLUE ASH |  | 452428330 |  |  |  |  |  |
		| Kettering Acute Care Surgery | 11480383 | Gregory | J | Staten |  |  |  |  | 3535 SOUTHERN BLVD | STE 2100 | KETTERING |  | 454291221 |  |  |  |  |  |
		| Kettering Acute Care Surgery | 12433983 | Emily | J | Stephens |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| grove city internal medicine | 10799915 | Phillip | J | Stern |  |  |  |  | 3055 COLUMBUS ST |  | GROVE CITY |  | 431232751 |  |  |  |  |  |
		| grove city internal medicine | 10858361 | William | C | Stevenson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| grove city internal medicine | 11413129 | Christopher | Michael | McPherson |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| grove city internal medicine | 12712373 | Dominic | A. | Mehling |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| grove city internal medicine | 12082878 | Matthew | J | Meier |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| FCMH Medical and Surgical Associates | 11496908 | Tabitha | S. | Melvin |  |  |  |  | 1510 COLUMBUS AVE | STE 230 | WSHNGTN CT HS |  | 431601987 |  |  |  |  |  |
		| Adena Cardiology | 10795988 | SANTOSH | G | MENON |  | 1235468083 |  |  | 4437 STATE ROUTE 159 | STE 125 | CHILLICOTHE |  | 456017065 |  |  |  |  |  |
		| Adena Cardiology | 10795989 | Martin | E | Menosky |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 10796001 | Thomas | J | Merle |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 10796011 | Sharon | Susanne | Merryman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 12706943 | Jeanette | M | Mertz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 10826822 | Dennis | A | Mesker |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 10796027 | Frank | J | Meszaros |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Adena Cardiology | 11516663 | Ian | A | Meyer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mayfield Clinic Inc | 12774925 | Nancy | M | Meyer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mayfield Clinic Inc | 12282198 | Regina | A | Meyer |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mayfield Clinic Inc | 10796056 | Patrick | U | Mezu |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Wright State Physicians | 12419169 | Eleina |  | Mikhaylov |  |  |  |  | 30 E APPLE ST | STE 2200 | DAYTON |  | 454092939 |  |  |  |  |  |
		| Wright State Physicians | 11267480 | Cynthia | D | Miller |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 10796110 | David | C | Miller |  |  |  |  | 2000 JOSEPH E SANKER BLVD |  | CINCINNATI |  | 452121979 |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796193 | Stephen | A | Minnis |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796257 | Akber |  | Mohammed |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11206512 | Krishna | K | Mohan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11479803 | Patricia | G | Molony |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11541225 | Michael- Gerard | J | Moncman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10805077 | William | B | Monnig |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796309 | Tamara | Marie | Montgomery |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796330 | James | R | Moore |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796350 | KARIN | HILDA | MOORMA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11479818 | Lisa | M | Moorman |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11819492 | Casey | J | Moothart |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 12410734 | Humberto |  | Morales-Ramos |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10805113 | Brion | P | Moran |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796365 | Scott | R | Morehead |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796373 | Jeannette | M | Morgan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 11390023 | Ann | Kerr | Morrison |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796420 | Marc | R | Mosbacher |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Genesis Primary Care Physicians, LLC | 10796429 | Mary | K | Mosko |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| OhioHealth Heart and Vascular Physicians | 11667619 | Daniel | W | Mudrick |  |  |  |  | 3705 OLENTANGY RIVER RD | STE 100 | COLUMBUS |  | 432143467 |  |  |  |  |  |
		| Neurology Associates of Southern Ohio | 11356023 | Omar |  | Mulla-Ossmann |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Neurology Associates of Southern Ohio | 11259480 | Deanna | L | Winter |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Neurology Associates of Southern Ohio | 11993407 | Kimberly | K | Mullins |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 10796514 | Michael | R | Murnane |  |  |  |  | 745 W STATE ST | STE 610A | COLUMBUS |  | 432221575 |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 12009813 | Daniel | E | Murphy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 11957438 | Kimberly | Kay | Murphy |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 10796542 | Barbara | O | Murrell |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 11895954 | James | N | Muth |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 10796593 | Todd | R | Myers |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 11764344 | Pamela | Key | Cobb |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Columbus Cardiology Care, LLC | 11753810 | P | Aryeh | Cohen |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Mount Carmel Neurosurgery | 10789913 | Arthur | Neil | Cole |  |  |  |  | 495 COOPER RD | STE 215 | WESTERVILLE |  | 430818736 |  |  |  |  |  |
		| Springfield Urology | 11565411 | James | B | Colombo |  |  |  |  | 1164 E HOME RD | STE J | SPRINGFIELD |  | 455032726 |  |  |  |  |  |
		| Taylor Anesthesia Consultants, LLC | 10828142 | George | Raymond | Connell |  |  |  |  | 275 TAYLOR STATION RD |  | COLUMBUS |  | 432132927 |  |  |  |  |  |
		| Taylor Anesthesia Consultants, LLC | 11758282 | Laila | Maria | Castellino |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 11507054 | Lowell | W | Chambers |  |  |  |  | 750 MOUNT CARMEL MALL | STE 380 | COLUMBUS |  | 432221589 |  | 6148646363 | 6148642248 | mridgeway@cosadocs.com | Central Ohio Surgical Associates |
		| Central Ohio Surgical Associates | 10789588 | Michelle | C | Chambers |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 11889390 | Tammy | W | Chan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 10813809 | Yiu-Chung |  | Chan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 12654086 | Genevieve | Lara | Dekiel |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 12059478 | Elizabeth | A | Delaney |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 11494250 | Vickie | L | Deleruyelle |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 10790495 | Mark | G | Delworth |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Central Ohio Surgical Associates | 13648043 | Erin | Michelle | Demkowicz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 10790528 | Lloyd | D | Dennis |  |  |  |  | 40 WHITE OAK PROFESSIONAL CTR |  | VINCENT |  | 457849117 |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 12015780 | Jean | M | Denny |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Marietta Health Care Physicians, Inc. | 11439861 | Charles | J | DeNunzio |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 11312119 | Kedar | Krishna | Deshpande |  |  |  |  | 1080 POLARIS PKWY | STE 200 | COLUMBUS |  | 432406035 |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 11590004 | Ravi | S | Dhawale |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 10790604 | Shekar |  | Dheenan |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 10790615 | Donna | Tait | Diaz |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 11658109 | Daniel | P | DiSalvo |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 10790709 | JOHN | W | DOBSON |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 11919463 | Sarah | E | Dooley |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 10790834 | David | R | Drosick |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Orthopaedic and Spine Center, LLC | 10790881 | Igor |  | Dumbadze |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Sound Physicians | 12729993 | Kristen |  | Dunlap |  |  |  |  | 5969 E BROAD ST | STE 403 | COLUMBUS |  | 432131540 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11953835 | Michael | W | Dusing |  |  |  |  | 350 THOMAS MORE PKWY | STE 200 | CRESTVIEW HLS |  | 410175460 |  |  |  |  |  |
		| Tri State Urologic Services, PSC, Inc. | 11689103 | Karyn | M | Dyehouse |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 12623877 | Andrea | Kathleen | Howard |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 10793162 | Mark | R | Howard |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 12660214 | Richard | E | Hoyt |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 10793193 | SHAOMING |  | HUANG |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 10793220 | Jeannine | M | Hughes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 12556323 | Noi | Francesca | Hughes |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 10793224 | Johnny | Joon | Huh |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 11125230 | Eric | C | Hunkele |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| Family Health Center | 10384755 | Kimberly | D | Hunkele |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
		| CEI PHYSICIANS PSC INC | 10793291 | Robert | Karl | Hutchins |  |  |  |  |  |  |  |  | 452194239 |  |  |  |  |  |
		| CEI PHYSICIANS PSC INC | 11956006 | Randall | J | Contento |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
