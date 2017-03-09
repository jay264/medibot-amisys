class AuthorizationsMedicalManagementPage

    def inpatient_data_consolidation
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Inpatient Data Consolidation')
    end
	
	def certification
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Certification')
    end
	
end