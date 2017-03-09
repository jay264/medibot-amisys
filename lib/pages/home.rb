class HomePage

    def url
      ""
    end
	
	def provider
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Provider')
    end
	
	def membership_processing
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Membership Processing')
    end
	
	def authorizations_medical_management
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Authorizations / Medical Management')
    end
	
	def claims_processing
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Claims Processing')
    end
	
end