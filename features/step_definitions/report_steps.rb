When /^I load "([^"]*)" and "([^"]*)"$/ do |file1, file2|
	@reports = SpreadsheetReader.new
  @reports.open_workbooks(file1, file2)
	@reports.save_book1_data
	@reports.save_book2_data
end

When /^I compare the spreadsheets$/ do
	@reports.compare_book_data
end

When /^the spreadsheets should match$/ do
	puts @reports.book_results
end

When /^I sum the values in column "([^"]*)"$/ do |column|
	puts @reports.sum_data(column.to_i)
end

When /^I load the Amisys HH Processed table into memory$/ do
	book1 = Spreadsheet.open "AuthswithQueueIDConsolidated.xls"
	@amisys_results = book1.worksheet "Sheet1"
end

When /^I should see the "([^"]*)" in the table$/ do |qnumber|
@found_a_match = "no"
@amisys_results.each do |row|
	if row[1][qnumber]
		puts "Amisys Authorization Number = " + row[0]
		@found_a_match = "yes"
	end
end
if @found_a_match == "no"
		raise Exception, "Q Number Has Not Been Entered Into Amisys"
	end
end
