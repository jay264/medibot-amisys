class LoginPage

    def url
      ""
    end
	
	def user_name
      $browser.text_field(:name => 'j_username')
    end
	
	def password
      $browser.text_field(:name => 'j_password')
    end
	
	def submit
      $browser.button(:id => 'btnSubmit')
    end
	
	def clear
      $browser.button(:id => 'btnClear')
    end
	
end