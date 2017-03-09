When /^in the "([^"]*)" page I should see the "([^"]*)" element with a value of "([^"]*)"$/ do |page, element, value|
  get_element(page, element)
  value = jfl(value)
  if @element.class.to_s.match('Text') != nil
    actual_value = @element.when_present.value.strip
  elsif @element.class.to_s.match('Select') != nil
    actual_value = @element.when_present.options.map { |opt| opt.respond_to?(:text) ? opt.text.strip : opt }
  else
    actual_value = @element.when_present.text.gsub(/\s+/, ' ').strip
  end

  raise Exception, "Expected value of \"#{value.to_s}\" but actual value was \"#{actual_value.to_s}\"" if actual_value.to_s != value.to_s
end

When /^in the "([^"]*)" page I should see the "([^"]*)" authorization number and print it to the error report$/ do |page, element|
  get_element(page, element)
  actual_value = @element.when_present.value.strip
  puts "Amisys Auth Number = " + actual_value.to_s
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element with a date of "([^"]*)"$/ do |page, element, date|
  get_element(page, element)
  if @element.class.to_s.match('Text') != nil
    actual_value = @element.when_present.value
  elsif @element.class.to_s.match('Select') != nil
    actual_value = @element.when_present.options.map { |opt| opt.respond_to?(:text) ? opt.text.strip : opt }
  else
    actual_value = @element.when_present.text
  end
  time_value = Chronic.parse(value)
  expected_date = time_value ? time_value.strftime("%m/%d/%Y") : value
  msg = "Expected value of \"#{expected_date}\" but actual value was \"#{actual_value}\"."
  raise Exception, msg if actual_value.to_s != expected_date.to_s
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element with a selected option of "([^"]*)"$/ do |page, element, values|
  get_element(page, element)
  values = jfl(values)
  begin
    options = @element.when_present.selected_options.map do |opt|
      opt.respond_to?(:text) ? opt.text : opt
    end
    unless values == options.join(', ')
      msg = "The element has the selected option(s) \"#{options.join(', ')}\""
      raise Exception, msg
    end
  end
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element with options "([^"]*)"$/ do |page, element, values|
  get_element(page, element)
  begin
    element_options = @element.when_present.options.map { |opt| opt.text }
    unless values == element_options.join(', ')
      msg = "The element has the option(s) \"#{element_options.join(', ')}\""
      raise Exception, msg
    end
  end
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element which is checked$/ do |page, element|
  get_element(page, element)
  raise Exception, "Expected element to be checked but it was not." if @element.when_present.set? == false
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element which is not checked$/ do |page, element|
  get_element(page, element)
  raise Exception, "Expected element to be unchecked but it was checked." if @element.when_present.set? == true
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element which is empty$/ do |page, element|
  get_element(page, element)
  if @element.class.to_s.match('Text') != nil
    actual_value = @element.when_present.value
  elsif @element.class.to_s.match('Select') != nil
    actual_value = @element.when_present.options.map { |opt| opt.respond_to?(:text) ? opt.text.strip : opt }
  else
    actual_value = @element.when_present.text
  end
  raise Exception, "Expected element to be empty, but it has the value \"#{@element.value}\"." if actual_value.to_s.empty? != true
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element which is not empty$/ do |page, element|
  get_element(page, element)
  if @element.class.to_s.match('Text') != nil
    actual_value = @element.when_present.value
  elsif @element.class.to_s.match('Select') != nil
    actual_value = @element.when_present.options.map { |opt| opt.respond_to?(:text) ? opt.text.strip : opt }
  else
    actual_value = @element.when_present.text
  end
  raise Exception, "Expected element to not be empty, but it was." if actual_value.to_s.empty? == true
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element which is disabled$/ do |page, element|
  get_element(page, element)
  raise Exception, "Expected element to be disabled, but it is not." if @element.when_present.disabled? != true
end

When /^in the "([^"]*)" page I should not see the "([^"]*)" element$/ do |page, element|
  get_element(page, element)
  raise Exception, "Expected element to not be on the screen, but it was." if @element.exists?
end

When /^in the "([^"]*)" page I should see the "([^"]*)" element$/ do |page, element|
  get_element(page, element)
  wait.until {@element.exists?}
end

When /^in the "([^"]*)" page I should not see the text "([^"]*)"$/ do |page, text|
  text = jfl(text)
  raise Exception, "The text was visible on the screen when it should not have been." if $browser.text.include?(text)
end

When /^in the "([^"]*)" page I should see the text "([^"]*)"$/ do |page, text|
  text = jfl(text)
  wait.until { $browser.text.include?(text) }
end

When /^in the "([^"]*)" page's "([^"]*)" container I should see the text "([^"]*)"$/ do |page, element, text|
  text = jfl(text)
  wait.until { $browser.text.include?(text) }
end

When /^I want to see the source$/ do
  puts $browser.html
end
