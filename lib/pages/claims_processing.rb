class ClaimsProcessingPage

    def url
      ""
    end
	
	def medical_claim_entry
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Medical Claim Entry')
    end
	
	def hospital_claim_entry
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Hospital Claim Entry')
    end
	
end