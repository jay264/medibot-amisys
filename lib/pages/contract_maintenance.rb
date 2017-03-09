class ContractMaintenancePage

    def url
      ""
    end
	
	def contract_number
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT1_CONTRACT_NBR')
	end
	
	def first
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_NAME_FIRST')
	end
	
	def address
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_ADDRESS1')
	end
	
	def middle
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_NAME_MIDDLE')
	end
	
	def address_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_ADDRESS2')
	end
	
	def last
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_NAME_LAST')
	end
	
	def country
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_COUNTRY')
	end
	
	def suffix
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_NAME_SUFFIX')
	end
	
	def pre
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_NAME_PREFIX')
	end
	
	def city
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_CITY')
	end
	
	def zip
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_ZIP')
	end
	
	def county
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400A_COUNTY')
	end
	
	def phone_1
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHONE')
	end
	
	def phone_2
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSCREENPHONE2')
	end
	
	def email_address
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2420_EMAIL')
	end
	
	def division
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400E_DIVISION_NBR')
	end
	
	def ry
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400E_REASON')
	end
	
	def cy
	  $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtBCS2400E_CONTRACTYPE')
	end
	
	def address
	  "contract_maintenance/address.PNG"
	end
	
end