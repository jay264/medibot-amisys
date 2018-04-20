def initialize_variables
  @it_extract = ARGV[0]
  @template = ARGV[1]
end

def open_files
  @it_extract_file = File.open("#{@it_extract}.txt", "r")
  @old_template_file = File.open("#{@template}.feature", "r")
end

def process_template_file (new_feature_file_essette)
  line_count = 0
  @old_template_file.each_line do |line|
    line_count += 1
    case line_count
    when 6
      line = "Scenario Outline: #{@it_extract}" + "\n"
    when 1
      line = "Feature: Process Essette Extract #{@it_extract}" + "\n"
    end
    new_feature_file_essette.puts line
  end
  @old_template_file.close

  @skip_line = 0
  @it_extract_file.each_line do |line|
    if @skip_line > 0
      new_feature_file_essette.puts line
    end
    @skip_line = 1
  end

  @old_template_file.close
  @it_extract_file.close
end

initialize_variables
File.open("processed_Essette_#{@it_extract}.feature","w") do |new_feature_file_essette|
  open_files
  process_template_file (new_feature_file_essette)
end
