When /^I open "([^"]*)"$/ do |browser|
  case browser
    when "Internet Explorer"
      $browser = Watir::Browser.new :ie
    when "Firefox"
      $browser = Watir::Browser.new :ff
    when "Chrome"
      $browser = Watir::Browser.new :chrome
    else
      raise Exception, "Browser must be Internet Explorer, Firefox, or Chrome"
  end
  #@wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  $browser.driver.manage.window.maximize
  #$browser.execute_script("window.onbeforeunload = function() {};")
end

When /^I close "([^"]*)"$/ do |browser|
  $browser.quit
end

When /^I access Amisys$/ do
    $browser.goto('http://mtcarmel-wcaa.dstcorp.net:7138/amisys-web/Controller?view=jsp/Pportal.jsp')
end

When /^I click "([^"]*)" in the popup$/ do |command|
  $browser.alert.when_present.ok
  #modal = $browser.modal_dialog
  #modal.button(:text => "#{command}").click
end

When /^I close the logout popups$/ do
  $browser.driver.switch_to.window($browser.driver.window_handles.last)
  $browser.send_keys :enter
end

When /^I click "([^"]*)" in the popup if it exists$/ do |command|
  $browser.alert.ok if $browser.alert.exists?
end

When /^I go to the "([^"]*)" page$/ do |page|
  page_name = page.gsub(/\s+/, "") + "Page"
  page_class = Object.const_get(page_name)
  page = page_class.new
  url = page.send(:url)
  $browser.goto($environment + url)
end

When /^in the "([^"]*)" page I press the "([^"]*)" key "([^"]*)" times$/ do |page, key, times|
  key_sym = key.downcase.parameterize.underscore.to_sym
  times.to_i.times { |i| $browser.send_keys(key_sym)}
end

When /^I press "([^"]*)"$/ do |keys|
  case keys
	when "Control + Q"
		$browser.send_keys(:control, 'q')
	when "Control + N"
		$browser.send_keys(:control, 'n')
	when "Control + S"
		$browser.send_keys(:control, 's')
	when "Control + F"
		$browser.send_keys(:control, 'f')
	when "Control + U"
		$browser.send_keys(:control, 'u')
	when "F8"
		$browser.send_keys(:'f8')
	when "Arrow Down"
		$browser.send_keys(:'arrow_down')
	when "Control + D"
		$browser.send_keys(:control, 'd')
  when "Control + M"
    $browser.send_keys(:control, 'm')
	when "Default Address"
		$browser.send_keys(:'1')
  when "Provider"
    $browser.send_keys('935974')
  when "Tab"
		$browser.send_keys(:tab)
  when "Enter"
    $browser.send_keys(:enter)
  when "Control + Alt + R"
    $browser.send_keys(:control, :alt, 'r')
  when "Tab"
    $browser.send_keys(:tab)
  when "Space"
    $browser.send_keys(:space)
  when "ALT + z"
    $browser.send_keys(:alt, 'z')
  end
end

When /^I switch to the "([^"]*)" tab$/ do |tab|
  switch_tab_result = false
  all_windows = $browser.driver.window_handles
  all_windows.each do |window|
    $browser.driver.switch_to.window(window)
    $browser.driver.manage.window.maximize
    url = $browser.driver.current_url
    puts url.to_s
    if url == "#{tab}"
      switch_tab_result = true
      break
    end
  end

  raise Exception, "A Tab or Window with the name #{tab} could not be located." if switch_tab_result == false

end

When /^the test pauses for "([^"]*)" seconds$/ do |seconds|
  sleep(seconds.to_i)
end

When /^there is a "([^"]*)" second pause$/ do |seconds|
  sleep(seconds.to_i)
end

When /^I need to know the frame names$/ do
  $browser.frames.each do |frame|
    puts "top level frame info :" + frame.name.to_s
    frame.text_fields.each do |i|
      puts i.id
    end
    frame.frames.each do |innerframe|
      puts "second tier frame data is: " + innerframe.name.to_s
      innerframe.text_fields.each do |i|
        puts i.id
      end
    end
  end
end

When /^I need to know the window names$/ do
  $browser.windows.each do |each_window|
    puts each_window.title.to_s
  end
end


When /^I access the new window$/ do
  #$browser.driver.switch_to.window($browser.driver.window_handles.first)
  $browser.driver.switch_to.window($browser.driver.window_handles.last)
  #$browser.driver.switch_to.window($browser.driver.window_handles.iterator.next)
end

When /^I access the "([^"]*)" window$/ do |window_title|
  #$browser.driver.switch_to.window($browser.driver.window_handles.first)
  puts $browser.window(:title => "#{window_title}" ).use
  #puts $browser.window.last
  #$browser.window.last.use
  #$browser.driver.switch_to.window($browser.driver.window_handles.iterator.next)
end

When /^I print the source of the new window$/ do
  html=$browser.driver.page_source
  puts html
end

When /^I wait until the "([^"]*)" window exists$/ do |window_title|
  $browser.wait_until {$browser.window(:title => "#{window_title}" ).exists? }
end
