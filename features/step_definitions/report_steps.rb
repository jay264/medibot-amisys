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