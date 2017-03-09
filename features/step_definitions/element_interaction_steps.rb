When /^in the "([^"]*)" page I check the "([^"]*)" checkbox$/ do |page, element|
  get_element(page, element)
  @element.when_present.set
end

When /^in the "([^"]*)" page I choose the "([^"]*)" radio$/ do |page, element|
  get_element(page, element)
  @element.when_present.set
end

When /^in the "([^"]*)" page I clear the "([^"]*)" field$/ do |page, element|
  get_element(page, element)
  @element.when_present.clear
end

When /^in the "([^"]*)" page I click on "([^"]*)"$/ do |page, element|
  get_element(page, element)
  @element.when_present.click
end

When /^in the "([^"]*)" page I click on "([^"]*)" if it exists$/ do |page, element|
  get_element(page, element)
  @element.click if @element.exists?
end

When /^in the "([^"]*)" page I enter "([^"]*)" into the "([^"]*)" field$/ do |page, text, element|
  get_element(page, element)
  text = jfl(text)
  wait.until {@element.exists?}
  @element.when_present.set(text)
end

When /^in the "([^"]*)" page I enter the primary "([^"]*)" into the "([^"]*)" field and save the variable$/ do |page, text, element|
diagnosis_codes = Array.new
diagnosis_codes = text.split ", "
$primary_diagnosis_code = diagnosis_codes.shift
text = $primary_diagnosis_code
  get_element(page, element)
  text = jfl(text)
  wait.until {@element.exists?}
  @element.when_present.set(text)
end

When /^in the "([^"]*)" page I convert "([^"]*)" into the "([^"]*)" field$/ do |page, text, element|
  get_element(page, element)
  text = jfl(text)
  date = text.unpack('A4xA2xA2').rotate.join("")
  wait.until {@element.exists?}
  @element.when_present.set(date)
end

When /^in the "([^"]*)" page I format and enter "([^"]*)" into the "([^"]*)" field$/ do |page, text, element|
  get_element(page, element)
  text = word_wrap(text)
  @element.when_present.set(text)
end

When /^in the "([^"]*)" page I enter todays date into the "([^"]*)" field$/ do |page, element|
  get_element(page, element)
  date = Time.now.strftime("%m/%d/%y")
  @element.when_present.set(date)
end

When /^in the "([^"]*)" page I hover on "([^"]*)"$/ do |page, element|
  get_element(page, element)
  @element.when_present.hover
end

When /^in the "([^"]*)" page I right click on "([^"]*)"$/ do |page, element|
  get_element(page, element)
  @element.when_present.right_click
end

When /^in the "([^"]*)" page I save the value of the "([^"]*)" element as "([^"]*)"$/ do |page, element, variable|
  get_element(page, element)
  value = @element.when_present.class.to_s.match('Select') ? @element.selected_options.map(&:text).join(',') : @element.value.strip
  value = @element.text.strip if value == ""
  case variable
    when "STORED_VALUE(1)"
      $stored_value_1 = value
    when "STORED_VALUE(2)"
      $stored_value_2 = value
    when "STORED_VALUE(3)"
      $stored_value_3 = value
	  when "STORED_VALUE(4)"
      $stored_value_4 = value
    when "STORED_VALUE(5)"
      $stored_value_5 = value
    when "STORED_VALUE(6)"
      $stored_value_6 = value
    when "STORED_VALUE(7)"
      $stored_value_7 = value
    when "STORED_VALUE(8)"
      $stored_value_8 = value
    when "STORED_VALUE(9)"
      $stored_value_9 = value
    else
      raise Exception, "Variable must be STORED_VALUE(1), STORED_VALUE(2), or STORED_VALUE(3)"
  end
end

When /^in the "([^"]*)" page I select "([^"]*)" from the "([^"]*)" field$/ do |page, option, element|
  get_element(page, element)
  option = jfl(option)
  @element.when_present.select(option)
end

When /^in the "([^"]*)" page I uncheck the "([^"]*)" checkbox$/ do |page, element|
  get_element(page, element)
  @element.when_present.clear
end

When /^in the "([^"]*)" page I focus on the "([^"]*)" element$/ do |page, element|
  get_element(page, element)
  @element.when_present.focus
end

When /^in the "([^"]*)" page I should be focused on the "([^"]*)" element$/ do |page, element|
  get_element(page, element)
  @element.when_present.focused?
end

When /^in the "([^"]*)" page I use the determination "([^"]*)" to determine what to enter into the "([^"]*)" field$/ do |page, determination, element|
case determination
when "APPROVED"
	sorted_ex_code = "A1"
when "APPROVED - No Assessment"
	sorted_ex_code = "A1"
when "APPROVED-CHANGED"
	sorted_ex_code = "A1"
when "WITHDRAWN"
	sorted_ex_code = "UC"
end
get_element(page, element)
@element.when_present.set(sorted_ex_code)
end

When /^in the "([^"]*)" page I use the modality "([^"]*)" to determine what to enter into the "([^"]*)" field$/ do |page, modality, element|
case modality
when "CT", "MRI", "CTA", "SPEC", "PET", "MRA", "CPAC"
		sorted_modality = "RB"
	when "CPSC", "CARD", "CRTD", "CDEF", "CRTP", "CWCD"
		sorted_modality = "CX"
	when "MOCH", "BRA", "MOHO", "MOBI", "IMRT", "NUC", "2D3D", "MOPR"
		sorted_modality = "PB"
end
get_element(page, element)
@element.when_present.set(sorted_modality)
end

When /^in the "([^"]*)" page I use the sub-class "([^"]*)" to determine what to enter into the "([^"]*)" field$/ do |page, modality, element|
case modality
  when "Cardiology (HH)"
	  sorted_modality = "CO"
  when "Clinical Trial"
	  sorted_modality = "CT"
  when "DME"
    sorted_modality = "DM"
  when "Genetic Testing"
    sorted_modality = "UK"
  when "Hyperbaric Oxygen"
    sorted_modality = "HB"
  when "Integrated Oncology (HH)"
    sorted_modality = "PX"
  when "Observation"
    sorted_modality = "OB"
  when "OP Behavioral Health"
    sorted_modality = "BH"
  when "OP Substance Abuse"
    sorted_modality = "ED"
  when "Out of Network Services"
    sorted_modality = "ON"
  when "Outpatient Surgery/Procedure"
    sorted_modality = "PB"
  when "Part B Therapy"
    sorted_modality = "TH"
  when "Predetermination Request"
    sorted_modality = "OP"
  when "Radiology (HH)"
    sorted_modality = "RB"
  when "Transplant"
    sorted_modality = "TP"
  when "Inpatient"
    sorted_modality = "IP"
  when "Inpatient Rehabilitation"
    sorted_modality = "RH"
  when "IP Behavioral Health"
    sorted_modality = "BI"
  when "IP Substance Abuse"
    sorted_modality = "SA"
  when "Long Term Acute Care Hospital"
    sorted_modality = "LT"
  when "Skilled Nursing Facility"
    sorted_modality = "SN"
  end
get_element(page, element)
@element.when_present.set(sorted_modality)
end

When /^in the "([^"]*)" page I use the status reason "([^"]*)" to determine what to enter into the "([^"]*)" field$/ do |page, modality, element|
case modality
when "ACO"
	  sorted_modality = "PZ"
  when "Case Rate"
	  sorted_modality = "9A"
  when "Clinical Trial"
	  sorted_modality = "A6"
  when "EIS"
    sorted_modality = "PZ"
  when "Inpatient"
    sorted_modality = "BE"
  when "Medical Criteria Met"
    sorted_modality = "A1"
  when "Observation"
    sorted_modality = "PS"
  when "Pending Admission"
    sorted_modality = "9A"
  when "PPO-In-Network Rate"
    sorted_modality = "A1"
  when "PPO-Out-of-Network Rate"
    sorted_modality = "9A"
  when "Secondary Only"
    sorted_modality = "BE"
  when "Services Not Available In-Network"
    sorted_modality = "A7"
  when "SNF"
    sorted_modality = "BD"
  when "Transplant Evaluation"
    sorted_modality = "AB"
  when "Transplant Procedure"
    sorted_modality = "AB"
  when "With Additional Info"
    sorted_modality = "A1"
  when "Administration Denial"
    sorted_modality = "9A"
  when "Member Not Eligible"
    sorted_modality = "M3"
  when "Non-Covered Services (SNF, Rehabs)"
    sorted_modality = "WL"
  when "Not a Covered Benefit (PA)"
    sorted_modality = "WL"
  when "Not Medically Necessary"
    sorted_modality = "WR"
  when "Requested Medical Documentation Not Received"
    sorted_modality = "D8"
  when "Requested Services Considered Experimental"
    sorted_modality = "94"
  when "Services Available In-Network"
    sorted_modality = "BC"
  when "Services Continued at Higher Level (LTACH)"
    sorted_modality = "BB"
  when "Skilled Criteria Not Met"
    sorted_modality = "WR"
  when "ALJ"
    sorted_modality = "A1"
  when "KEPRO"
    sorted_modality = "A1"
  when "MAXIMUS"
    sorted_modality = "A1"
  when "MediGold Appeal"
    sorted_modality = "A1"
  when "Exceeds Quantity or Frequency Limits"
    sorted_modality = "9A"
  when "Portion of Request Not Covered by Medicare"
    sorted_modality = "9A"
  when "Portion of Request Not Medically Necessary"
    sorted_modality = "9A"
  when "Additional Information Requested"
    sorted_modality = "95"
  when "Inpatient"
    sorted_modality = "IP"
  end
get_element(page, element)
@element.when_present.set(sorted_modality)
end

When /^in the "([^"]*)" page I use the source "([^"]*)" to determine what to enter into the "([^"]*)" field$/ do |page, modality, element|
case modality
when "EMR"
	  sorted_modality = "MN"
  when "Fax"
	  sorted_modality = "FX"
  when "HealthHelp"
	  sorted_modality = "HH"
  when "Mail"
    sorted_modality = "ML"
  when "Phone"
    sorted_modality = "PH"
  when "Provider Portal"
    sorted_modality = "MN"
  when "Reports"
    sorted_modality = "RP"
  when "Member"
    sorted_modality = "MN"
  end
get_element(page, element)
@element.when_present.set(sorted_modality)
end

When /^in the "([^"]*)" page I determine whether it is an HMO or PPO and insert it into the "([^"]*)" field$/ do |page, element|

  if @hmoorppo.include? "PG: HM"
	    sorted_hmoorppo = "HM"
  elsif @hmoorppo.include? "PG: PP"
	    sorted_hmoorppo = "PP"
  end
  get_element(page, element)
  @element.when_present.set(sorted_hmoppo)
end

When /^in the "([^"]*)" page I save the HMO or PPO data from the "([^"]*)" element$/ do |page, element|
  get_element(page, element)
  #puts element.to_s
  @hmoorppo = element.to_s
end

When /^in the "([^"]*)" page I scroll to the right of the "([^"]*)" table$/ do |page, element|
  get_element(page, element)
  @element.when_present.send_keys :arrow_right
end

When /^I scroll to the right 150 times$/ do
  135.times do
    $browser.send_keys(:'arrow_right')
  end
end

When /^I scroll to the left 150 times$/ do
  135.times do
    $browser.send_keys(:'arrow_left')
  end
end

When /^I press tab 17 times$/ do
  17.times do
    $browser.send_keys(:'tab')
  end
end

When /^I press tab 7 times$/ do
  7.times do
    $browser.send_keys(:'tab')
  end
end

When /^I press tab 3 times$/ do
  3.times do
    $browser.send_keys(:'tab')
  end
end

When /^I press tab 14 times$/ do
  14.times do
    $browser.send_keys(:'tab')
  end
end

When /^in the "([^"]*)" page I enter the first "([^"]*)" into the "([^"]*)" service code field and save the variable$/ do |page, text, element|
  if !text.empty?
    get_element(page, element)
    #puts "text = " + text.to_s
    $service_codes = Array.new
	$service_codes = text.split ", "
	text = $service_codes.shift
	text = jfl(text)
	$first_service_code = text
	wait.until {@element.exists?}
	@element.when_present.set(text)
  end
end

When /^in the "([^"]*)" page I save the "([^"]*)" service codes$/ do |page, text|
  if !text.empty?
    #get_element(page, element)
    #puts "text = " + text.to_s
    $service_codes = Array.new
	  $service_codes = text.split ", "
	  #text = $service_codes.shift
	  #text = jfl(text)
	  $first_service_code = $service_codes.shift
	  #wait.until {@element.exists?}
	  #@element.when_present.set(text)
  end
end

When /^in the "([^"]*)" page I determine progress notes using "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", and "([^"]*)" and insert it into the "([^"]*)" field$/ do |page, req_prov, phone, fax, procedure, facility, ref_number, essette_number, element|
  recieved_date = Date.today.to_s
  full_text = "Received Pre-Cert  on #{receieved_date} request from: #{req_prov} \nPhone #: #{phone} Fax #: #{fax} \nRequested : #{procedure} \nFacility: #{facility} \nHealthHelp Reference No #{ref_number} \nFILE                     LINE\nEssette Authorization Number: #{essette_number}"
  get_element(page, element)
  @element.when_present.set(full_text)
end

When /^I kill the browser$/ do
  delete_hanging_browsers
end
