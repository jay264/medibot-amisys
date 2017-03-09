
class FunctionsMenuPage
	
	def hospital_privileges
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '11HPRV')
    end
	
	def dea_cds
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '3designer_15')
    end
	
	def more
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => 'MoreFunctions')
	end
	
	def license
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '20designer_17')
	end
	
	def board_cert
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '22BC')
	end
	
	def address
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '6ADD')
	end
	
	def hospital_svcs
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '0HOSP')
	end
	
	def authorized_svcs
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '1MED')
	end
	
	def pick_hospital_svc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '12HOSD')
	end
	
	def pick_outpat_svc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '14OUTD')
	end
	
	def pick_medical_svc
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '13MEDD')
	end
	
	def outpatient_svcs
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '2OUTP')
	end
	
	def void
	  $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '6VOID')
	end
	
	def close
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '3CLSD')
    end
	
	def open_auth
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '4OPEN')
    end
	
	def remarks
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '7RR')
    end
	
	def remarks_alternate
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '10RR')
    end
	
	def progress_notes
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '5PN')
    end
	
	def alternate_identifiers
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '5AIM')
    end
	
	def term
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '8TERM')
    end
	
	def reinstate
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => '7REIN')
    end
	
end