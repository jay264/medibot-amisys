def initialize_variables
  @hh_spreadsheet = ARGV[0]
end

def open_files
  @logfile = File.open("#{@hh_spreadsheet}_log.txt", "w")
  book1 = Spreadsheet.open "#{@hh_spreadsheet}.xls"
  @logfile.write "\n" + "Opened spreadsheet " + @hh_spreadsheet.to_s
  @hh_translated = book1.worksheet 'Auth Report'
  @logfile.write "\n" + "Opened a new feature file for the spreadsheet data"
  @old_template_file = File.open("missing_hh_auths_template.feature", "r")
end

def process_template_file (new_feature_file_essette)
  line_count = 0
  @old_template_file.each_line do |line|
    line_count += 1
    case line_count
    when 6
      line = "Scenario Outline: Process Essette Extract #{@hh_spreadsheet}" + "\n"
    when 1
      line = "Feature: Process Essette Extract #{@hh_spreadsheet}" + "\n"
    end
    new_feature_file_essette.puts line
  end
  @old_template_file.close
end

def initalize_spreadsheet_variables
  @logfile.write "\n" + "Initializing Variables "
end

require 'spreadsheet'
initialize_variables
File.open("#{@hh_spreadsheet}.feature","w") do |new_feature_file_essette|
  open_files
  process_template_file (new_feature_file_essette)
  initalize_spreadsheet_variables
  @hh_translated.each do |row|
    row4 = row[4].to_s
    if !row4.nil? && row4["Q"]
      new_feature_file_essette << "| " + row[4] + " |" + "\n"
    end
  end
end
