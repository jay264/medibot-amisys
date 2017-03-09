class MembershipProcessingPage

    def url
      ""
    end
	
	def member_maintenance
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Member Maintenance')
    end
	
	def group
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Group')
    end
	
	def contract_maintenance
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:text => 'Contract Maintenance')
    end
	
end