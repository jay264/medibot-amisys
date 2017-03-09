def get_element(page, element)
  page_name = page.gsub(/\s+/, "") + "Page"
  page_class = Object.const_get(page_name)
  page = page_class.new
  element_method = element.downcase.parameterize.underscore
  @element = page.send(element_method)
end

def jfl(text)
    if text.include?("=BLANK()")
      "  "
    elsif text.include?("=STORED_VALUE(1)")
      a = $stored_value_1
	  a = "($" + a.sub!("-", "").sub!("$", "") + ")" if $stored_value_1.to_f < 0
	  text.sub!("=STORED_VALUE(1)", a)
    elsif text.include?("=STORED_VALUE(2)")
      a = $stored_value_2
	  a = "($" + a.sub!("-", "").sub!("$", "") + ")" if $stored_value_2.to_f < 0
	  text.sub!("=STORED_VALUE(2)", a)
    elsif text.include?("=STORED_VALUE(3)")
      a = $stored_value_3
	  if $stored_value_3.to_f < 0
	    puts a
		a = a.sub!("-", "")
		puts a
		#a = a.sub!("$", "")
		puts a
		a = "($" + a + ")"
	  end
	  text.sub!("=STORED_VALUE(3)", a)
	elsif text.include?("=STORED_VALUE(4)")
      a = $stored_value_4
	  a = "($" + a.sub!("-", "").sub!("$", "") + ")" if $stored_value_4.to_f < 0
	  text.sub!("=STORED_VALUE(4)", a)
	elsif text.include?("=SUM(3,4)")
	  a = sprintf('%.2f', $stored_value_3.to_i + $stored_value_4.to_i).to_s
	  text.sub!("=SUM(3,4)", a)
    elsif text.include?("=TODAYS_DATE()")
	  text.sub!("=TODAYS_DATE()", Time.now.strftime("%m/%d/%Y"))
	elsif text.include?("=ABS_STORED_VALUE(4)")
	  a = sprintf('%.2f', $stored_value_4.to_i.abs).to_s
	  text.sub!("=ABS_STORED_VALUE(4)", a)
	elsif text.include?("=SUBTRACT(2,1)")
	  a = $stored_value_2.to_i
	  b = $stored_value_1.sub!("$", "")
	  text.sub!("=SUBTRACT(2,1)", sprintf('%.2f', a.to_f - b.to_f))
	elsif text.include?("a random number")
		rand(10 ** 9)
	elsif text.include?("a random first and middle name")
		first_name = ''
		middle_name = ''
		chars = 'ABCDEFGHJKLMNOPQRSTUVWXYZ'
		5.times { |i| first_name << chars[rand(chars.size)] }
		5.times { |i| middle_name << chars[rand(chars.size)] }
		first_name + " " + middle_name
	elsif text.include?("a random last name")
		last_name = ''
		chars = 'ABCDEFGHJKLMNOPQRSTUVWXYZ'
		5.times { |i| last_name << chars[rand(chars.size)] }
		last_name
	elsif text.include?("a random 4 digit number")
		rand(10 ** 4)
	elsif text.include?("a random 9 digit number")
		rand(10 ** 9)
	elsif text.include?("a random IN number")
		'IN' + rand(10).to_s + rand(10).to_s + rand(10).to_s + rand(10).to_s
	elsif text.include?("a random EG number")
		'EG' + rand(10).to_s + rand(10).to_s + rand(10).to_s + rand(10).to_s
	elsif text.include?("a random zip code")
		my_array = %W[43001 43002 43003 43004 43005 43006 43007 43008 43009 43010 43011 43013 43014 43015 43016 43017 43018 43019 43021 43022 43023 43025 43026 43027 43028 43029 43030 43031 43032 43033 43035 43036 43037 43040 43041 43044 43045 43046 43047 43048 43050 43054 43055 43056 43057 43058 43060 43061 43062 43064 43065 43066 43067 43068 43070 43071 43072 43073 43074 43076 43077 43078 43080 43081 43082 43083 43084 43085 43086 43093 43098 43099 43101 43102 43103 43105 43106 43107 43109 43110 43112 43113 43115 43116 43117 43119 43123 43125 43126 43128 43130 43136 43137 43140 43142 43143 43145 43146 43147 43148 43150 43151 43153 43154 43155 43156 43157 43160 43162 43163 43164 43195 43196 43198 43199 43200 43201 43202 43203 43204 43205 43206 43207 43209 43210 43211 43212 43213 43214 43215 43216 43217 43218 43219 43220 43221 43222 43223 43224 43226 43227 43228 43229 43230 43231 43232 43234 43235 43236 43240 43251 43253 43260 43265 43266 43267 43268 43269 43270 43271 43272 43279 43284 43285 43286 43287 43291 43299 43344 43701 43702 43711 43716 43717 43720 43721 43722 43723 43724 43725 43727 43728 43730 43731 43732 43733 43734 43735 43736 43738 43739 43740 43746 43747 43748 43749 43750 43752 43754 43755 43756 43757 43758 43760 43761 43762 43764 43766 43767 43768 43770 43771 43772 43773 43777 43778 43779 43780 43782 43783 43786 43787 43788 43789 43791 43793 43802 43803 43805 43811 43812 43821 43822 43824 43828 43830 43836 43842 43843 43844 43845 43914 43915 43931 43946 44813 44822 44843 44862 44875 44878 44900 44901 44902 44903 44904 44905 44906 44907 44999 45001 45002 45003 45004 45011 45012 45013 45014 45015 45018 45020 45023 45025 45026 45030 45033 45041 45042 45043 45044 45050 45051 45052 45053 45055 45056 45061 45062 45063 45064 45067 45069 45071 45073 45099 45102 45103 45106 45111 45112 45120 45122 45140 45145 45147 45150 45153 45156 45157 45158 45160 45174 45176 45200 45201 45202 45203 45204 45205 45206 45207 45208 45209 45210 45211 45212 45213 45214 45215 45216 45217 45218 45219 45220 45221 45222 45223 45224 45225 45226 45227 45228 45229 45230 45231 45232 45233 45234 45235 45236 45237 45238 45239 45240 45241 45242 45243 45244 45245 45246 45247 45248 45249 45250 45251 45252 45253 45254 45255 45258 45262 45263 45264 45267 45268 45269 45270 45271 45273 45274 45277 45280 45296 45298 45299 45301 45305 45307 45309 45314 45315 45316 45319 45322 45323 45324 45325 45327 45335 45341 45342 45343 45344 45345 45349 45354 45368 45369 45370 45372 45377 45384 45385 45387 45389 45401 45402 45403 45404 45405 45406 45407 45408 45409 45410 45412 45413 45414 45415 45416 45417 45418 45419 45420 45422 45423 45424 45426 45427 45428 45429 45430 45431 45432 45433 45434 45435 45437 45439 45440 45441 45444 45448 45449 45454 45458 45459 45463 45469 45470 45475 45479 45481 45482 45490 45501 45502 45503 45504 45505 45506 45601 45612 45617 45628 45633 45644 45647 45673 45681 45712 45713 45714 45715 45721 45724 45727 45729 45734 45742 45744 45745 45746 45750 45767 45768 45773 45784 45786 45787 45788 45789 45944 45999]
		item = my_array.shuffle[0]
	elsif text.include?("a random hospital")
		my_array = %W[904192 906885 906626 909053 934803 934423 933610 934977 934420 926852 907351 933469 903308 901013 902976 932406 934640 934598 933532 935157 900265 910704 902905 916366 934508 900271 918495 901062 904920 903631 934514 933390 933445 903845 917626 913975 934557 904306 902208 902572]
		item = my_array.shuffle[0]
	elsif text.include?("a future current or retroactive termination date")
		my_array = %W[04212014 04212015 04212011]
		item = my_array.shuffle[0]
	else
      text.strip
	end
end

def wait
	Selenium::WebDriver::Wait.new(:timeout => 90)
end

def word_wrap(text, options = {})
  line_width = options.fetch(:line_width, 80)

  text.split("\n").collect do |line|
    line.length > line_width ? line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1\n").strip : line
  end * "\n"
end

def delete_hanging_browsers
    #taskkill /IM iexplore.exe /F
    #sleep 0.5
    #taskkill /IM IEDriverServer.exe /F
    $browser.driver.execute_script("taskkill /IM iexplore.exe /F")
end
