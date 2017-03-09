def initialize_variables
  row_count = 0
  column_count = 0
  @essette_spreadsheet = ARGV[0]
end

def open_files
  @logfile = File.open("processed_#{@essette_spreadsheet}_log.txt", "w")
  book1 = Spreadsheet.open "#{@essette_spreadsheet}.xls"
  @logfile.write "\n" + "Opened spreadsheet " + @essette_spreadsheet.to_s
  @essette_translated = book1.worksheet 'NEWEssetteDailyExtractReport-In'
  @logfile.write "\n" + "Added the spreadsheet to a book in the worksheet"
  #@new_feature_file_essette = File.open("processed_essette_#{@essette_spreadsheet}.feature","w")
  @logfile.write "\n" + "Opened a new feature file for the spreadsheet data"
  @old_template_file = File.open("outpatient_authorization_template_sikuli.feature", "r")
end

def process_template_file (new_feature_file_essette)
  line_count = 0
  @old_template_file.each_line do |line|
    line_count += 1
    case line_count
    when 6
      line = "Scenario Outline: #{@essette_spreadsheet}" + "\n"
    when 1
      line = "Feature: Process Essette Extract #{@essette_spreadsheet}" + "\n"
    end
    new_feature_file_essette.puts line
  end
  @old_template_file.close
end

def initalize_spreadsheet_variables
  @logfile.write "\n" + "Initializing Variables "
  @entire_row_1 = Array.new
  @entire_row_2 = Array.new
  @entire_row_3 = Array.new
  @entire_row_4 = Array.new
  @entire_row_5 = Array.new
  @new_example = Array.new
  @first_time_through = "YES"
  @first_new_auth_info = "YES"
  @first_auth_type = "YES"
  @first_auth_status = "YES"
  @first_service_code = "YES"
  @first_care_date = "YES"
  @first_note = "YES"
  @holding_service_codes = Array.new
  @holding_diagnosis_codes = Array.new
  @holding_notes = Array.new
  @notes = Array.new
  @row_type_indicator = ""
end

def check_row_type (row)
  @logfile.write "\n" + "Initial Row Type Indicator = " + @row_type_indicator
  @logfile.write "\n" + "Row[2] = " + row[2].to_s

  if @row_type_indicator == "Care Date Detail"
    if !row[1].nil?
      @row_type_indicator = "New Auth"
    end

  elsif row[2] == "Other Reference #"
    @row_type_indicator = "Headers"

  elsif @row_type_indicator == "Headers"
    @row_type_indicator = "New Auth"

  elsif @row_type_indicator == "New Auth"
    @row_type_indicator = "Auth Status"

  elsif @row_type_indicator == "Auth Status"
    @row_type_indicator = "Auth Status Detail"

  elsif @row_type_indicator == "Service Code"
    @row_type_indicator = "Service Code Detail"

  elsif @row_type_indicator == "Care Date"
    @row_type_indicator = "Care Date Detail"

  elsif @row_type_indicator == "Note"
    @row_type_indicator = "Note Detail"

  elsif row[2] ==  "Auth Status"
    @row_type_indicator = "Auth Status"

  elsif row[2] == "Service Code"
    @row_type_indicator = "Service Code"

  elsif row[2] ==  "Note"
    @row_type_indicator = "Note"

  elsif row[2] ==  "Care Date"
    @row_type_indicator = "Care Date"

  elsif @row_type_indicator.include? " Detail"
    @logfile.write "\n" + "Second Detail Record"

  else
    @row_type_indicator << " Detail"

  end

  @logfile.write "\n" + "Revised Row Type Indicator = " + @row_type_indicator
end

def save_row_1_info (row)
  @logfile.write "\n" + "Saving Row 1 Info " + row.to_s
  member_id = row[3].to_i.to_s
  extra_zeroes = 9 - member_id.length
  new_member_id = ""
  extra_zeroes.times do |s|
    new_member_id += "0"
  end
  if !row[1].nil?
    row[0] = row[1]
    row[0] = row[0].strftime("%m%d%Y")
  end
  if !row[2].nil?
    row[2] = row[2].to_s.gsub(".0", "")
  end
  row[3] = new_member_id + member_id + "-01"
  row[7] = row[7].to_i.to_s
  row[10] = row[10].to_i.to_s
  row[12] = row[12].to_i.to_s
  row[13] = row[13].to_i.to_s
  row[15] = row[15].to_i.to_s
  row[35] = row[35].to_i.to_s
  row[40] = row[40].to_i.to_s
  row[41] = row[41].to_i.to_s
  if row[23] == 'Denied'
    row[28] = row[22]
    #parsed = DateTime.strptime(row[28].to_s, "%m/%d/%Y")
    row[29] = row[28].next_day(1)
  end
  if !row[22].nil?
    row[22] = row[22].strftime("%m%d%Y")
  end
  if !row[28].nil?
    row[28] = row[28].strftime("%m%d%Y")
  end
  if !row[29].nil?
    row[29] = row[29].strftime("%m%d%Y")
  end
  @entire_row_1.clear
  for i in 0..41
    @entire_row_1[i] = row[i]
  end
end

def save_row_2_info (row)
  @logfile.write "\n" + "Saving Row 2 Info " + row.to_s
  if @first_auth_status == "YES"
    @holding_diagnosis_codes = row[4].to_i.to_s
    @first_auth_status = "NO"
  else
    @holding_diagnosis_codes << ", " + row[4].to_i.to_s
  end
  row[4] = @holding_diagnosis_codes
  if !row[7].nil?
    row[7] = row[7].strftime("%m%d%Y")
  end
  @entire_row_2.clear
  for i in 1..7
    @entire_row_2[i-1] = row[i]
  end
end

def save_row_3_info (row)
  @logfile.write "\n" + "Saving Row 3 Info " + row.to_s
  if row[2] =~ /^[A-Z]/
    row[2] = row[2].to_s
  elsif row[2].to_s =~ /^[1-9]/
    row[2] = row[2].to_s.gsub('.0', '')
  end
  if row[2]
    row[2] = "0" + row[2] if row[2].size == 4
  end
  row[5] = row[5].to_i.to_s
  row[6] = row[6].to_i.to_s
  row[8] = row[8].to_i.to_s
  if @first_service_code == "YES"
    @holding_service_codes = row[2].to_s
    @holding_qty_approved = row[5].to_s
    @holding_quantity_requested = row[6].to_s
    @holding_determination = row[7].to_s
    @holding_auth_approval_days = row[8].to_s
    @first_service_code = "NO"
  else
    @holding_service_codes << ", " + row[2].to_s
    @holding_qty_approved << ", " + row[5].to_s
    @holding_quantity_requested << ", " + row[6].to_s
    @holding_determination << ", " + row[7].to_s
    @holding_auth_approval_days << ", " + row[8].to_s
  end
  row[2] = @holding_service_codes
  row[5] = @holding_qty_approved
  row[6] = @holding_quantity_requested
  row[7] = @holding_determination
  row[8] = @holding_auth_approval_days
  @entire_row_3.clear
  for i in 2..10
    @entire_row_3[i-2] = row[i]
  end
end

def save_row_4_info (row)
  @logfile.write "\n" + "Saving Row 4 Info " + row.to_s
  row[2] = row[2].to_s.gsub(',', ' ')
  row[2] = row[2].to_s.gsub('"', '')
  if @first_note == "YES"
    @first_note_entries = row[2].to_s
    @first_note = "NO"
  else
    @first_note_entries << ", " + row[2].to_s
  end
  row[2] = @first_note_entries
  @entire_row_4.clear

  @entire_row_4[0] = row[2]
end

def save_row_5_info (row)
  @logfile.write "\n" + "Saving Row 5 Info " + row.to_s
  if !row[2].nil?
    row[2] = row[2].strftime("%m%d%Y")
  end
  row[6] = row[6].to_i.to_s
  if @first_care_date == "YES"
    @holding_care_date_entries = row[2].to_s
    @holding_actual_care_entries = row[3].to_s
    @holding_approved_care_entries = row[4].to_s
    @holding_determination_entries = row[5].to_s
    @holding_auth_approval_date = row[6].to_s
    @first_care_date = "NO"
  else
    @holding_care_date_entries << ", " + row[2].to_s
    @holding_actual_care_entries << ", " + row[3].to_s
    @holding_approved_care_entries << ", " + row[4].to_s
    @holding_determination_entries << ", " + row[5].to_s
    @holding_auth_approval_date << ", " + row[6].to_s
  end
  row[2] = @holding_care_date_entries
  row[3] = @holding_actual_care_entries
  row[4] = @holding_approved_care_entries
  row[5] = @holding_determination_entries
  row[6] = @holding_auth_approval_date
  @entire_row_5.clear
  for i in 2..6
    @entire_row_5[i-2] = row[i]
  end
end

def set_first_time_through_to_false
  @first_time_through = "NO"
  @logfile.write "\n" + "Set first time through to false"
end

def set_first_new_auth_info_to_false
  @first_new_auth_info = "NO"
end

def set_first_service_code_to_false
  @first_service_code = "NO"
end

def set_first_auth_type_to_false
  @first_auth_type = "NO"
end

def set_first_auth_status_to_false
  @first_auth_status = "NO"
end

def set_first_note_to_false
  @first_note = "NO"
end

def set_first_care_date_to_false
  @first_care_date = "NO"
end

def add_auth_info_to_feature
  @new_example = "| " + @entire_row_1*" | " + " |"
  @logfile.write "\n" + "Just wrote entire row 1"
  @logfile.write "\n" + @entire_row_1.to_s + "\n"
end

def add_auth_status_info_to_feature
  @new_example << " " + @entire_row_2*" | " + " |"
  @logfile.write "\n" + "Just wrote entire row 2"
  @logfile.write "\n" + @entire_row_2.to_s + "\n"
end

def add_service_code_info_to_feature
  @new_example << " " + @entire_row_3*" | " + " |"
  @logfile.write "\n" + "Just wrote entire row 3"
  @logfile.write "\n" + @entire_row_3.to_s + "\n"
end

def add_notes_to_feature
  @new_example << " " + @entire_row_4*" | " + " |"
  @logfile.write "\n" + "Just wrote entire row 4 and ended Example"
  @logfile.write "\n" + @entire_row_4.to_s + "\n"
end

def add_care_date_to_feature
  @new_example << " " + @entire_row_5*" | " + " |" + "\n"
  @logfile.write "\n" + "Just wrote entire row 5 and ended Example"
  @logfile.write "\n" + @entire_row_5.to_s + "\n"
end


def add_new_example_to_feature (new_feature_file_essette)
  new_feature_file_essette << @new_example
  @logfile.write "\n" + "Just appended new example"
  @logfile.write "\n" + @new_example.to_s + "\n"
end


require 'spreadsheet'
initialize_variables
File.open("processed_#{@essette_spreadsheet}.feature","w") do |new_feature_file_essette|
  open_files
  process_template_file (new_feature_file_essette)
  initalize_spreadsheet_variables
  @essette_translated.each do |row|
    @logfile.write "\n\n" + "Processing New Row " + row.to_s
    check_row_type(row)
    case @row_type_indicator
    when "Headers"
      @logfile.write "\n" + "Processing Header"
    when "New Auth"
      @logfile.write "\n" + "First Time Through = " + @first_time_through.to_s
      if @first_time_through == "NO"
        add_care_date_to_feature
        add_new_example_to_feature (new_feature_file_essette)
        save_row_1_info (row)
        @first_auth_status = "YES"
        @first_service_code = "YES"
        @first_note = "YES"
        @first_care_date = "YES"
      else
        save_row_1_info (row)
        set_first_time_through_to_false
      end
    when "Auth Status"
      add_auth_info_to_feature
    when "Service Code"
      add_auth_status_info_to_feature
    when "Note"
      add_service_code_info_to_feature
      @holding_notes = "NO"
    when "Care Date"
      add_notes_to_feature
    when "Auth Status Detail"
      save_row_2_info (row)
      set_first_auth_status_to_false
    when "Service Code Detail"
      save_row_3_info (row)
      set_first_service_code_to_false
    when "Note Detail"
      save_row_4_info (row)
      @first_service_code = "YES"
      set_first_note_to_false
    when "Care Date Detail"
      save_row_5_info (row)
      set_first_care_date_to_false
    end
  end
  add_care_date_to_feature
  add_new_example_to_feature (new_feature_file_essette)
end
