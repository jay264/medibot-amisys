class HospitalClaimEntryPage

    def url
      ""
    end
	
	def recv_dt
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtYMDRECEIVED')
    end
	
	def covers_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSERVICE_X_YMDEFF')
    end
	
	def covers_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSERVICE_X_YMDEND')
    end
	
	def inst_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHDR_PROV_NBR')
    end
	
	def member_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLAIM_MEMBER_NBR')
    end
	
	def diagnoses_poa_indicators
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDIAG_FLD_1')
    end
	
	def chgs
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLAIM_AMTCHARGE')
    end
	
	def cpt4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDTL_PROC_NBR')
    end
	
	def tp_pay
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDTL_CHARGE_AMT')
    end
	
	def prov_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHDR_PROV_NBR')
    end
	
	def diagnosis_procedures_and_service_detail
      $browser.frame(:name => 'Main').frame(:name => 'Form').link(:id => 'Atab2')
    end
	
	def diag_a
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtHDR_DIAG_NBR')
    end
	
	def charge_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLAIM_AMTCHARGE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDTL_YMDEFF')
    end
	
	def lc
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtSERVICE_X_LOCATION')
    end
	
	def ds
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtCLAIM_DISCHARGE')
    end
	
	def proc
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDTL_PROC_NBR')
    end
	
	def charge_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtDTL_CHARGE_AMT')
    end
	
	def error_message
      $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'ErrorMsg')
    end
	
end