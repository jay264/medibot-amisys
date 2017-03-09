class ProviderPage

    def url
      ""
    end
	
	def provider_credentialing
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Provider Credentialing')
    end
	
	def provider_maintenance_credentialing
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Provider Maintenance Credentialing')
    end
	
	def provider_affiliation
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Provider Affiliation')
	end
	
	def group_practice
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Group Practice')
	end
	
	def hospital_privileges
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Hospital Privileges')
	end
	
end