When /^in the "([^"]*)" page I should see the "([^"]*)" image$/ do |page, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
		@screen.wait "#{screen_image}", 30
	end
end

When /^in the "([^"]*)" page I click on the "([^"]*)" image$/ do |page, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
		@screen.wait "#{screen_image}", 30
		if @screen.exists "#{screen_image}"
			@screen.click "#{screen_image}"
		end
	end
end

When /^in the "([^"]*)" page I enter "([^"]*)" into the "([^"]*)" image$/ do |page, value, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = value.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I enter the first element from "([^"]*)" into the "([^"]*)" image$/ do |page, value, element|
  element_array = value.split(', ')
  #element_array = element_array.reject(&:blank?)
  first_element_array = element_array.first
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = first_element_array.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I enter the first service code into the "([^"]*)" image$/ do |page, element|
  if $first_service_code
    screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
    begin
      @screen.wait "#{screen_image}", 30
      if @screen.exists "#{screen_image}"
        @screen.click "#{screen_image}"
        sleep (1)
        value_array = $first_service_code.scan(/./)
        value_array.each do |character|
          @screen.type character
          sleep (0.15)
        end
      end
    end
  end
end

When /^in the "([^"]*)" page I enter "([^"]*)" into the "([^"]*)" image and save the variable$/ do |page, value, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = value.scan(/./)
      $variable_storage << value
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I enter the first quantity requested "([^"]*)" into the "([^"]*)" image and save the variable$/ do |page, value, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      $quantity_requested = Array.new
      $quantity_requested = value.split ", "
      value = $quantity_requested.shift
      $first_quantity_requested = value
      $variable_storage << value
      value_array = value.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I enter the first quantity approved "([^"]*)" into the "([^"]*)" image and save the variable$/ do |page, value, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      $quantity_approved = Array.new
      $quantity_approved = value.split ", "
      value = $quantity_approved.shift
      $variable_storage << value
      $first_quantity_approved = value
      value_array = value.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

#When /^in the "([^"]*)" page I enter the primary "([^"]*)" into the "([^"]*)" image and save the variable$/ do |page, value, element|#
#  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
#  diagnosis_codes = Array.new
#  diagnosis_codes = value.split ", "
#  puts "diagnosis_codes = " + diagnosis_codes.to_s
#  $primary_diagnosis_code = diagnosis_codes.shift
#  begin
#    @screen.wait "#{screen_image}", 30
#    if @screen.exists "#{screen_image}"
#      @screen.click "#{screen_image}"
#      sleep (1)
#      value_array = $primary_diagnosis_code.scan(/./)
#      value_array.each do |character|
#        @screen.type character
#        sleep (0.15)
#      end
#    end
#  end
#end

When /^in the "([^"]*)" page I enter the primary diagnosis code into the "([^"]*)" image$/ do |page, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = $primary_diagnosis_code.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^I press ENTER graphically$/ do
  @screen.type Sikulix::Key.ENTER
end

When /^I RIGHT-CLICK graphically$/ do
  @screen.type Sikulix::Key.RightClick
end

When /^I enter the "([^"]*)" text$/ do |text|
  sleep (1)
  text_array = text.scan(/./)
  text_array.each do |character|
    @screen.type character
    sleep (0.15)
  end
end

When /^I copy the provider number to the clipboard and save the variable$/ do
  $browser.send_keys(:control, 'c')
  $variable_storage << Clipboard.data
  #puts $variable_storage
end


When /^in the "([^"]*)" page I convert "([^"]*)" into the "([^"]*)" image$/ do |page, text, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  text = jfl(text)
  date = text.unpack('A4xA2xA2').rotate.join("")
  @screen.wait "#{screen_image}", 30
  if @screen.exists "#{screen_image}"
    @screen.click "#{screen_image}"
    sleep (1)
    date_array = date.scan(/./)
    date_array.each do |character|
      @screen.type character
      sleep (0.15)
    end
  end
end

When /^in the "([^"]*)" page I convert "([^"]*)" into the "([^"]*)" image and save the variable$/ do |page, text, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  #date = text.unpack('A4xA2xA2').rotate.join("")
  date = text
  @screen.wait "#{screen_image}", 30
  if @screen.exists "#{screen_image}"
    @screen.click "#{screen_image}"
    sleep (1)
    date_array = date.scan(/./)
    $variable_storage << date
    date_array.each do |character|
      @screen.type character
      sleep (0.15)
    end
  end
end

When /^in the "([^"]*)" page I use the status reason "([^"]*)" to determine what to enter into the "([^"]*)" image and save the variable$/ do |page, modality, element|
case modality
when "ACO"
	  sorted_modality = "PZ"
  when "Case Rate"
	  sorted_modality = "A1"
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
    sorted_modality = "9A"
  when "Transplant Evaluation"
    sorted_modality = "AB"
  when "Transplant Procedure"
    sorted_modality = "AB"
  when "With Additional Info"
    sorted_modality = "A1"
  when "Administration Denial"
    sorted_modality = "32"
  when "Member Not Eligible"
    sorted_modality = "M3"
  when "Non-Covered Services (SNF, Rehabs)"
    sorted_modality = "WL"
  when "Not a Covered Benefit (PA)"
    sorted_modality = "D1"
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
  end
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (2)
      value_array = sorted_modality.scan(/./)
      $variable_storage << sorted_modality
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I use the SNF auth status "([^"]*)" to determine what to enter into the "([^"]*)" image and save the variable$/ do |page, modality, element|
case modality
when "Interim Approval"
	sorted_modality = "9A"
when "Approved"
	sorted_modality = "BD"
end
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (2)
      value_array = sorted_modality.scan(/./)
      $variable_storage << sorted_modality
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I use the status reason "([^"]*)" to determine what to enter into the "([^"]*)" image$/ do |page, modality, element|
case modality
when "ACO"
	  sorted_modality = "PZ"
  when "Case Rate"
	  sorted_modality = "A1"
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
    sorted_modality = "32"
  when "Member Not Eligible"
    sorted_modality = "M3"
  when "Non-Covered Services (SNF, Rehabs)"
    sorted_modality = "WL"
  when "Not a Covered Benefit (PA)"
    sorted_modality = "D1"
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
  end
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = sorted_modality.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I use the SNF auth status "([^"]*)" to determine what to enter into the "([^"]*)" image$/ do |page, modality, element|
case modality
when "Interim Approval"
	  sorted_modality = "9A"
  when "Approved"
	  sorted_modality = "BD"
  end
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = sorted_modality.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end


When /^in the "([^"]*)" page I use the sub-class "([^"]*)" to determine what to enter into the "([^"]*)" image and save the variable$/ do |page, modality, element|
  if $is_it_par == "YES" && $auth_class == "Inpatient"
    case modality
    when "Cardiology (HH)"
      sorted_modality = "CR"
      $auth_type_global = "CR"
    when "Clinical Trial"
      sorted_modality = "CT"
      $auth_type_global = "CT"
    when "DME"
      sorted_modality = "DM"
      $auth_type_global = "DM"
    when "Genetic Testing"
      sorted_modality = "GP"
      $auth_type_global = "GP"
    when "Hyperbaric Oxygen"
      sorted_modality = "HB"
      $auth_type_global = "HB"
    when "Integrated Oncology (HH)"
      sorted_modality = "PV"
      $auth_type_global = "PV"
    when "Observation"
      sorted_modality = "OB"
      $auth_type_global = "OB"
    when "OP Behavioral Health"
      sorted_modality = "BI"
      $auth_type_global = "BI"
    when "OP Substance Abuse"
      sorted_modality = "DP"
      $auth_type_global = "DP"
    when "Out of Network Services"
      sorted_modality = "ON"
      $auth_type_global = "ON"
    when "Outpatient Surgery/Procedure"
      sorted_modality = "OS"
      $auth_type_global = "OS"
    when "Part B Therapy"
      sorted_modality = "BP"
      $auth_type_global = "BP"
    when "Predetermination Request"
      sorted_modality = "UK"
      $auth_type_global = "UK"
    when "Radiology (HH)"
      sorted_modality = "RB"
      $auth_type_global = "RB"
    when "Transplant"
      sorted_modality = "TP"
      $auth_type_global = "TP"
    when "Inpatient"
      sorted_modality = "IP"
      $auth_type_global = "IP"
    when "Inpatient Rehabilitation"
      sorted_modality = "RH"
      $auth_type_global = "RH"
    when "IP Behavioral Health"
      sorted_modality = "BI"
      $auth_type_global = "BI"
    when "IP Substance Abuse"
      sorted_modality = "SA"
      $auth_type_global = "SA"
    when "Long Term Acute Care Hospital"
      sorted_modality = "LT"
      $auth_type_global = "LT"
    when "Skilled Nursing Facility"
      sorted_modality = "SN"
      $auth_type_global = "SN"
    end
  end
  if $is_it_par == "NO" && $auth_class == "Inpatient"
    case modality
    when "Cardiology (HH)"
      sorted_modality = "CU"
      $auth_type_global = "CU"
    when "Clinical Trial"
      sorted_modality = "CV"
      $auth_type_global = "CV"
    when "DME"
      sorted_modality = "DX"
      $auth_type_global = "DX"
    when "Genetic Testing"
      sorted_modality = "GN"
      $auth_type_global = "GN"
    when "Hyperbaric Oxygen"
      sorted_modality = "HO"
      $auth_type_global = "HO"
    when "Integrated Oncology (HH)"
      sorted_modality = "PW"
      $auth_type_global = "PW"
    when "Observation"
      sorted_modality = "OO"
      $auth_type_global = "OO"
    when "OP Behavioral Health"
      sorted_modality = "BX"
      $auth_type_global = "BX"
    when "OP Substance Abuse"
      sorted_modality = "DA"
      $auth_type_global = "DA"
    when "Out of Network Services"
      sorted_modality = "ON"
      $auth_type_global = "ON"
    when "Outpatient Surgery/Procedure"
      sorted_modality = "OS"
      $auth_type_global = "OS"
    when "Part B Therapy"
      sorted_modality = "BP"
      $auth_type_global = "BP"
    when "Predetermination Request"
      sorted_modality = "UK"
      $auth_type_global = "UK"
    when "Radiology (HH)"
      sorted_modality = "XO"
      $auth_type_global = "XO"
    when "Transplant"
      sorted_modality = "TY"
      $auth_type_global = "TY"
    when "Inpatient"
      sorted_modality = "IO"
      $auth_type_global = "IO"
    when "Inpatient Rehabilitation"
      sorted_modality = "RO"
      $auth_type_global = "RO"
    when "IP Behavioral Health"
      sorted_modality = "BX"
      $auth_type_global = "BX"
    when "IP Substance Abuse"
      sorted_modality = "SA"
      $auth_type_global = "SA"
    when "Long Term Acute Care Hospital"
      sorted_modality = "AC"
      $auth_type_global = "AC"
    when "Skilled Nursing Facility"
      sorted_modality = "SO"
      $auth_type_global = "SO"
    end
  end
  if $is_it_par == "YES" && $auth_class == "Outpatient"
    case modality
    when "Cardiology (HH)"
      sorted_modality = "CO"
      $auth_type_global = "CO"
    when "Clinical Trial"
      sorted_modality = "CT"
      $auth_type_global = "CT"
    when "DME"
      sorted_modality = "DM"
      $auth_type_global = "DM"
    when "Genetic Testing"
      sorted_modality = "GP"
      $auth_type_global = "GP"
    when "Hyperbaric Oxygen"
      sorted_modality = "HB"
      $auth_type_global = "HB"
    when "Integrated Oncology (HH)"
      sorted_modality = "PX"
      $auth_type_global = "PX"
    when "Observation"
      sorted_modality = "OB"
      $auth_type_global = "OB"
    when "OP Behavioral Health"
      sorted_modality = "BH"
      $auth_type_global = "BH"
    when "OP Substance Abuse"
      sorted_modality = "DP"
      $auth_type_global = "DP"
    when "Out of Network Services"
      sorted_modality = "ON"
      $auth_type_global = "ON"
    when "Outpatient Surgery/Procedure"
      sorted_modality = "OS"
      $auth_type_global = "OS"
    when "Part B Therapy"
      sorted_modality = "BP"
      $auth_type_global = "BP"
    when "Predetermination Request"
      sorted_modality = "UK"
      $auth_type_global = "UK"
    when "Radiology (HH)"
      sorted_modality = "RB"
      $auth_type_global = "RB"
    when "Transplant"
      sorted_modality = "TP"
      $auth_type_global = "TP"
    when "Inpatient"
      sorted_modality = "IP"
      $auth_type_global = "IP"
    when "Inpatient Rehabilitation"
      sorted_modality = "RH"
      $auth_type_global = "RH"
    when "IP Behavioral Health"
      sorted_modality = "BI"
      $auth_type_global = "BI"
    when "IP Substance Abuse"
      sorted_modality = "SA"
      $auth_type_global = "SA"
    when "Long Term Acute Care Hospital"
      sorted_modality = "LT"
      $auth_type_global = "LT"
    when "Skilled Nursing Facility"
      sorted_modality = "SN"
      $auth_type_global = "SN"
    end
  end
  if $is_it_par == "NO" && $auth_class == "Outpatient"
    case modality
    when "Cardiology (HH)"
      sorted_modality = "CX"
      $auth_type_global = "CX"
    when "Clinical Trial"
      sorted_modality = "CV"
      $auth_type_global = "CV"
    when "DME"
      sorted_modality = "DX"
      $auth_type_global = "DX"
    when "Genetic Testing"
      sorted_modality = "GN"
      $auth_type_global = "GN"
    when "Hyperbaric Oxygen"
      sorted_modality = "HO"
      $auth_type_global = "HO"
    when "Integrated Oncology (HH)"
      sorted_modality = "PU"
      $auth_type_global = "PU"
    when "Observation"
      sorted_modality = "OO"
      $auth_type_global = "OO"
    when "OP Behavioral Health"
      sorted_modality = "BO"
      $auth_type_global = "BO"
    when "OP Substance Abuse"
      sorted_modality = "DA"
      $auth_type_global = "DA"
    when "Out of Network Services"
      sorted_modality = "ON"
      $auth_type_global = "ON"
    when "Outpatient Surgery/Procedure"
      sorted_modality = "OS"
      $auth_type_global = "OS"
    when "Part B Therapy"
      sorted_modality = "BP"
      $auth_type_global = "BP"
    when "Predetermination Request"
      sorted_modality = "UK"
      $auth_type_global = "UK"
    when "Radiology (HH)"
      sorted_modality = "XO"
      $auth_type_global = "XO"
    when "Transplant"
      sorted_modality = "TY"
      $auth_type_global = "TY"
    when "Inpatient"
      sorted_modality = "IO"
      $auth_type_global = "IO"
    when "Inpatient Rehabilitation"
      sorted_modality = "RO"
      $auth_type_global = "RO"
    when "IP Behavioral Health"
      sorted_modality = "BX"
      $auth_type_global = "BX"
    when "IP Substance Abuse"
      sorted_modality = "SA"
      $auth_type_global = "SA"
    when "Long Term Acute Care Hospital"
      sorted_modality = "AC"
      $auth_type_global = "AC"
    when "Skilled Nursing Facility"
      sorted_modality = "SO"
      $auth_type_global = "SO"
    end
  end

  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = sorted_modality.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^I input the alternate procedure codes if there are any$/ do
  if $service_codes
    loop do
      break if !$service_codes.any?
      service_code = $service_codes.shift
      quantity_requested = $quantity_requested.shift
      quantity_approved = $quantity_approved.shift
      steps %Q{
        And the test pauses for "3" seconds
        And I press "Control + N"
        And the test pauses for "5" seconds
    	  And in the "authorized_services" page I should see the "how_many_requested" image
    	  And in the "authorized_services" page I enter "#{quantity_requested}" into the "how_many_requested" image
    	  And in the "authorized_services" page I enter "#{quantity_approved}" into the "how_many_authorized" image
    	  And in the "authorized_services" page I enter "#{$variable_storage[3]}" into the "dates_begin_requested" image
        And in the "authorized_services" page I enter "#{$variable_storage[4]}" into the "dates_end_requested" image
    	  And in the "authorized_services" page I enter "#{$variable_storage[5]}" into the "ref_prov_number" image
    	  And in the "authorized_services" page I enter "#{$variable_storage[6]}" into the "prov" image
    	  And in the "authorized_services" page I enter "#{$auth_type_global}" into the "auth_type_ar" image
    	  And in the "authorized_services" page I enter "M" into the "claim_type" image
    	  And in the "authorized_services" page I enter "#{$variable_storage[0]}" into the "ex" image
        And in the "authorized_services" page I enter "#{service_code}" into the "proc_number" image
        And the test pauses for "2" seconds
        And in the "authorized_services" page I enter "#{$primary_diagnosis_code}" into the "diag_number_2" image
    	  And in the "authorized_services" page I click on the "save" image
        And the test pauses for "3" seconds
      }
    end
  end
end

When /^I use the auth class "([^"]*)", sub class "([^"]*)", and approved days "([^"]*)" to input the hospital services page if it is inpatient$/ do |class_code, sub_class, approved_days|
  loop do
    break if class_code != "Inpatient"
    break if sub_class == "Observation"
    service_code = $service_codes.shift
    quantity_requested = $quantity_requested.shift
    quantity_approved = $quantity_approved.shift
    steps %Q{
      And the test pauses for "3" seconds
      And in the "Functions Menu" page I click on "Hospital Svcs"
      And the test pauses for "5" seconds
    	And in the "hospital_services" page I should see the "est_admit" image
      And in the "hospital_services" page I enter "#{$variable_storage[3]}" into the "est_admit" image
      And in the "hospital_services" page I enter "#{$variable_storage[6]}" into the "facility_number" image
      And in the "hospital_services" page I enter "#{$variable_storage[5]}" into the "ref_prov_number" image
      And in the "hospital_services" page I enter "#{$variable_storage[5]}" into the "att_prov_number" image
    	And in the "hospital_services" page I enter "#{approved_days}" into the "req_days" image
    	And in the "hospital_services" page I enter "#{approved_days}" into the "auth_days" image
    	And in the "hospital_services" page I enter "#{$variable_storage[7]}" into the "auth_type_ar" image
    	And in the "hospital_services" page I enter "H" into the "claim_type" image
    	And in the "hospital_services" page I enter "#{$variable_storage[0]}" into the "ex" image
    	And in the "hospital_services" page I click on the "save" image
      And the test pauses for "5" seconds
      And I press F8
      And the test pauses for "5" seconds
    }
  end
end

When /^I input the notes if any are contained in "([^"]*)"$/ do |notes|
  notes_holder = Array.new
  notes_holder = notes.split(",")
  count = 0
  if notes_holder.any?
    loop do
      break if notes_holder[count].nil?
      note = jfl(notes_holder[count]).to_s.gsub(/[[:space:]]/, " ")
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        And I press "Control + N"
        And the test pauses for "3" seconds
        When in the "progress_notes" page I enter "#{note}" into the "progress_note_text_field_entry" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
      count +=1
    end
  end
end

When /^I input the ACO assessments if any are contained in "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/ do |created_by_aco, created_date_aco, saved_by_aco, saved_date_aco, aco_field |
  aco_holder = Array.new
  aco_holder << [created_by_aco, created_date_aco, saved_by_aco, saved_date_aco, aco_field]
  if aco_holder.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        When in the "progress_notes" page I enter "Created by ACO: #{created_by_aco}\nCreated Date ACO : #{created_date_aco}\nSaved by ACO : #{saved_by_aco}\nSaved date ACO : #{saved_date_aco}\nACO Field : #{aco_field}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^I input the ACO type and payment if any are contained in "([^"]*)"$/ do |type_and_payment|
  aco_holder = Array.new
  aco_holder << type_and_payment
  if aco_holder.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        When in the "progress_notes" page I enter "ACO Type and Payment: #{type_and_payment}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^I input the EIS assessments if any are contained in "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/ do |saved_by_eis, saved_date_eis, created_by_eis, created_date_eis, eis_field |
  eis_holder = Array.new
  eis_holder << [saved_by_eis, saved_date_eis, created_by_eis, created_date_eis, eis_field]
  if eis_holder.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        When in the "progress_notes" page I enter "Saved by EIS : #{saved_by_eis}\nSaved Date EIS : #{saved_date_eis}\nCreated by EIS : #{created_by_eis}\nCreated Date EIS : #{created_date_eis}\nEIS Field : #{eis_field}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^I input the EIS AA if any are contained in "([^"]*)"$/ do |eis_aa|
  eis_holder = Array.new
  eis_holder << eis_aa
  if eis_holder.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        When in the "progress_notes" page I enter "EIS AA: #{eis_aa}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^I input the first SNF assessments if any are contained in "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/ do |adm, auth_for_payment, created_by_snf, created_date_snf, days_used_prior, dc|
  snf_holder_1 = Array.new
  snf_holder_1 << [adm, auth_for_payment, created_by_snf, created_date_snf, days_used_prior, dc]
  if snf_holder_1.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        And I press "Control + N"
        And the test pauses for "3" seconds
        When in the "progress_notes" page I enter "ADM : #{adm}\nAuth for Payment : #{auth_for_payment}\nCreated by SNF : #{created_by_snf}\nCreated Date SNF : #{created_date_snf}\nDays Used Prior : #{days_used_prior}"\nDC : #{dc}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^I input the second SNF assessments if any are contained in "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/ do |denc_date, mds_date, saved_by_snf, nomnc_date, saved_date_snf, total_days, total_skilled_days|
  snf_holder_2 = Array.new
  snf_holder_2 << [denc_date, mds_date, saved_by_snf, nomnc_date, saved_date_snf, total_days, total_skilled_days]
  if snf_holder_2.any?
      steps %Q{
        And the test pauses for "3" seconds
        And in the "Functions Menu" page I click on "Progress Notes"
        And the test pauses for "5" seconds
        And I press "Control + N"
        And the test pauses for "3" seconds
        When in the "progress_notes" page I enter "DENC Date : #{denc_date}\nMDS Date : #{mds_date}\nSaved by SNF : #{saved_by_snf}\nNOMNC Date : #{nomnc_date}\nSaved Date SNF : #{saved_date_snf}\nTotal Days : #{total_days}\nTotal Skilled Days : #{total_skilled_days}" into the "progress_note_text_field" image
        And the test pauses for "1" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
      }
  end
end

When /^in the "([^"]*)" page I convert "([^"]*)" as HMO or PPO and enter into the "([^"]*)" image$/ do |page, health_plan, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"

  case health_plan
  when "NETWORK CHOICE PPO "
    value = "PP"
  when "VALUE CHOICE PPO"
    value = "PP"
  else
    value = "HM"
  end

  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = value.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^I use the sub class "([^"]*)" to determine what location to enter into the location image$/ do |sub_class|
  translated_location = ""
  if sub_class == "Observation"
    translated_location = "OB"
  end
  if sub_class == "Inpatient"
    translated_location = "21"
  end
  if sub_class == "SNF"
    translated_location = "31"
  end
  steps %{
    And in the "authorized_services" page I enter "#{translated_location}" into the "location" image
  }
end

When /^I use the sub class "([^"]*)" to determine what count to enter into the count image$/ do |sub_class|
  count = ""
  if sub_class == "Observation"
    count = "AD"
  end
  if sub_class == "Inpatient"
    count = "AD"
  end
  if sub_class == "SNF"
    count = "AD"
  end
  steps %{
    And in the "authorized_services" page I enter "#{count}" into the "count" image
  }
end

When /^I use the sub class "([^"]*)" and referring provider number "([^"]*)" to determine what provider to enter into the provider fields$/ do |sub_class, facility_number|
  translated_location = ""
  if sub_class == "Inpatient"
  end
  if sub_class == "Inpatient"
    translated_location = "21"
  end
  if sub_class == "SNF"
    sub_class = "31"
  end
  steps %{
    And in the "hospital_services" page I enter #{translated_location} into the "location" image
  }
end

When /^in the "([^"]*)" page I add the "([^"]*)" to the "([^"]*)" and put the result in the "([^"]*)" image$/ do |page, days_approved, date, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  element_array = value.split(', ')
  #element_array = element_array.reject(&:blank?)
  date = element_array.first
  yyyy = date[4,4].to_i
  mm = date[0,2].to_i
  dd = date[2,2].to_i
  end_date = DateTime.new(yyyy, mm, dd) + days_approved.to_i
  end_date_str = end_date.strftime('%m%d%Y')
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = end_date_str.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end


When /^in the "([^"]*)" page I add the "([^"]*)" to the "([^"]*)" and put the result in the "([^"]*)" image and add one$/ do |page, days_approved, date, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  element_array = value.split(', ')
  #element_array = element_array.reject(&:blank?)
  date = element_array.first
  yyyy = date[4,4].to_i
  mm = date[0,2].to_i
  dd = date[2,2].to_i
  end_date = DateTime.new(yyyy, mm, dd) + days_approved.to_i + 1
  end_date_str = end_date.strftime('%m%d%Y')
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = end_date_str.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I add the "([^"]*)" to the "([^"]*)" and put the result in the "([^"]*)" image and subtract one$/ do |page, days_approved, date, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  element_array = value.split(', ')
  #element_array = element_array.reject(&:blank?)
  date = element_array.first
  yyyy = date[4,4].to_i
  mm = date[0,2].to_i
  dd = date[2,2].to_i
  end_date = DateTime.new(yyyy, mm, dd) + days_approved.to_i - 1
  end_date_str = end_date.strftime('%m%d%Y')
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = end_date_str.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^in the "([^"]*)" page I subtract one from the "([^"]*)" days and put the result in the "([^"]*)" image$/ do |page, days_approved, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  days_approved = days_approved.to_i - 1
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value_array = days_approved.to_s.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^I determine whether something is PAR or NONPAR$/ do
  screen_image = "#{$image_directory}" + "provider_affiliation_list" + "\\" + "its_nonpar" + ".PNG"
  $is_it_par = ""
  begin
    sleep (2)
    if @screen.exists "#{screen_image}"
      $is_it_par = "NO"
    else
      $is_it_par = "YES"
    end
  end
end

When /^I save the auth class "([^"]*)" to a variable$/ do |auth_class|
  $auth_class = auth_class
end

When /^in the "([^"]*)" page I enter the updated auth type code into the "([^"]*)" field$/ do |page, element|
  get_element(page, element)
  text = jfl($auth_type_global)
  wait.until {@element.exists?}
  @element.when_present.set(text)
end

When /^I edit myself if I am a NONPAR$/ do
  screen_image = "#{$image_directory}" + "provider_affiliation_list" + "\\" + "its_nonpar" + ".PNG"
  begin
    sleep (2)
    if @screen.exists "#{screen_image}"
      steps %{
        And the test pauses for "3" seconds
        And in the "authorized_services" screen I enter "OO" into the "op" image
        And the test pauses for "3" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds
        And I press "F8"
        And the test pauses for "3" seconds
        And in the "Certification" Screen I enter "OO" into the "Auth Type" field
        And I press "Control + S"
        And teh test pauses for "3" seconds
      }
    else
      steps %{
        And I press "F8"
        And the test pauses for "3" seconds
      }
    end
  end
end

When /^in the "([^"]*)" page I enter "([^"]*)" into the "([^"]*)" image and add one$/ do |page, value, element|
  screen_image = "#{$image_directory}" + "#{page}" + "\\" + "#{element}" + ".PNG"
  begin
    @screen.wait "#{screen_image}", 30
    if @screen.exists "#{screen_image}"
      @screen.click "#{screen_image}"
      sleep (1)
      value = value.to_i + 1
      value_array = value.to_s.scan(/./)
      value_array.each do |character|
        @screen.type character
        sleep (0.15)
      end
    end
  end
end

When /^I use "([^"]*)" to determine the start and end dates and authorized days$/ do |care_dates|
  care_dates = care_dates.split(', ')
  first_snf_date = care_dates.first
  yyyy1 = first_snf_date[4,4].to_i
  mm1 = first_snf_date[0,2].to_i
  dd1 = first_snf_date[2,2].to_i
  puts "first thing in array = " + first_snf_date.to_s
  puts "yyyy1 = " + yyyy1.to_s
  puts "mm1 = " + mm1.to_s
  puts "dd1 = " + dd1.to_s
  first_snf_date_time = DateTime.new(yyyy1, mm1, dd1)
  $first_snf_date_str = first_snf_date_time.strftime('%m%d%Y')
  last_snf_date = care_dates.last
  yyyy2 = last_snf_date[4,4].to_i
  mm2 = last_snf_date[0,2].to_i
  dd2 = last_snf_date[2,2].to_i
  puts "last thing in array = " + last_snf_date.to_s
  puts "yyyy2 = " + yyyy2.to_s
  puts "mm2 = " + mm2.to_s
  puts "dd2 = " + dd2.to_s
  last_snf_date_time = DateTime.new(yyyy2, mm2, dd2)
  $last_snf_date_str = last_snf_date_time.strftime('%m%d%Y')
  puts "last snf date str = " + last_snf_date_time.strftime('%m%d%Y')
  $total_snf_days = last_snf_date_time - first_snf_date_time
  $total_snf_days = $total_snf_days.to_i
end

When /^in the "([^"]*)" page I enter the first SNF date into the "([^"]*)" image$/ do |page, element|
  steps %{
    And in the "#{page}" page I enter "#{$first_snf_date_str}" into the "#{element}" image
  }
end

When /^in the "([^"]*)" page I enter the last SNF date into the "([^"]*)" image$/ do |page, element|
  steps %{
    And in the "#{page}" page I enter "#{$last_snf_date_str}" into the "#{element}" image
  }
end

When /^in the "([^"]*)" page I enter the total SNF days into the "([^"]*)" image$/ do |page, element|
  steps %{
    And in the "#{page}" page I enter "#{$total_snf_days}" into the "#{element}" image
  }
end
