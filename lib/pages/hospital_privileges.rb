class HospitalPrivilegesPage

    def url
      ""
    end
	
	def prov_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_PROV')
    end
	
	def prov_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_NAME')
    end
	
	def por
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPOR_FLAG')
    end
	
	def hospital_id_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_HOSP')
    end
	
	def hospital_id_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_NAME_1')
    end
	
	def date_of_appointment
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_M_YMDHOSPAPP')
    end
	
	def radio_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___1')
    end
	
	def hp_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___1')
    end
	
	def ri_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___1')
    end
	
	def description_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___1')
    end
	
	def eff_date_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___1')
    end
	
	def end_date_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___1')
    end
	
	def op_number_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___1')
    end
	
	def verification_date_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___1')
    end
	
	def so_1
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___1')
    end
	
	def radio_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___2')
    end
	
	def hp_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___2')
    end
	
	def ri_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___2')
    end
	
	def description_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___2')
    end
	
	def eff_date_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___2')
    end
	
	def end_date_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___2')
    end
	
	def op_number_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___2')
    end
	
	def verification_date_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___2')
    end
	
	def so_2
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___2')
    end
	
	def radio_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___3')
    end
	
	def hp_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___3')
    end
	
	def ri_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___3')
    end
	
	def description_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___3')
    end
	
	def eff_date_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___3')
    end
	
	def end_date_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___3')
    end
	
	def op_number_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___3')
    end
	
	def verification_date_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___3')
    end
	
	def so_3
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___3')
    end
	
	def radio_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___4')
    end
	
	def hp_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___4')
    end
	
	def ri_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___4')
    end
	
	def description_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___4')
    end
	
	def eff_date_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___4')
    end
	
	def end_date_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___4')
    end
	
	def op_number_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___4')
    end
	
	def verification_date_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___4')
    end
	
	def so_4
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___4')
    end
	
	def radio_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___5')
    end
	
	def hp_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___5')
    end
	
	def ri_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___5')
    end
	
	def description_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___5')
    end
	
	def eff_date_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___5')
    end
	
	def end_date_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___5')
    end
	
	def op_number_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___5')
    end
	
	def verification_date_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___5')
    end
	
	def so_5
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___5')
    end
	
	def radio_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___6')
    end
	
	def hp_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___6')
    end
	
	def ri_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___6')
    end
	
	def description_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___6')
    end
	
	def eff_date_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___6')
    end
	
	def end_date_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___6')
    end
	
	def op_number_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___6')
    end
	
	def verification_date_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___6')
    end
	
	def so_6
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___6')
    end
	
	def radio_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___7')
    end
	
	def hp_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___7')
    end
	
	def ri_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___7')
    end
	
	def description_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___7')
    end
	
	def eff_date_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___7')
    end
	
	def end_date_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___7')
    end
	
	def op_number_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___7')
    end
	
	def verification_date_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___7')
    end
	
	def so_7
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___7')
    end
	
	def radio_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___8')
    end
	
	def hp_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___8')
    end
	
	def ri_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___8')
    end
	
	def description_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___8')
    end
	
	def eff_date_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___8')
    end
	
	def end_date_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___8')
    end
	
	def op_number_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___8')
    end
	
	def verification_date_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___8')
    end
	
	def so_8
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___8')
    end
	
	def radio_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___9')
    end
	
	def hp_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___9')
    end
	
	def ri_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___9')
    end
	
	def description_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___9')
    end
	
	def eff_date_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___9')
    end
	
	def end_date_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___9')
    end
	
	def op_number_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___9')
    end
	
	def verification_date_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___9')
    end
	
	def so_9
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___9')
    end
	
	def radio_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___10')
    end
	
	def hp_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___10')
    end
	
	def ri_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___10')
    end
	
	def description_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___10')
    end
	
	def eff_date_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___10')
    end
	
	def end_date_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___10')
    end
	
	def op_number_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___10')
    end
	
	def verification_date_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___10')
    end
	
	def so_10
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___10')
    end
	
	def radio_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___11')
    end
	
	def hp_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___11')
    end
	
	def ri_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___11')
    end
	
	def description_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___11')
    end
	
	def eff_date_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___11')
    end
	
	def end_date_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___11')
    end
	
	def op_number_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___11')
    end
	
	def verification_date_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___11')
    end
	
	def so_11
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___11')
    end
	
	def radio_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').radio(:id => 'optRecord___12')
    end
	
	def hp_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_PRIVILEGE___12')
    end
	
	def ri_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_RESTRICTION___12')
    end
	
	def description_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtT_DESCRIPTION___12')
    end
	
	def eff_date_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEFF___12')
    end
	
	def end_date_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDEND___12')
    end
	
	def op_number_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_OP___12')
    end
	
	def verification_date_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_YMDVERIFY___12')
    end
	
	def so_12
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_VERIFY_SRC___12')
    end
	
	def at
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtAT_CODE_1')
    end
	
	def trans_code
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_M_TRANSCODE')
    end
	
	def date
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_M_YMDTRANS')
    end
	
	def op_number
      $browser.frame(:name => 'Main').frame(:name => 'Form').text_field(:id => 'txtPROV_HOSP_M_OP_NBR')
    end
	
	def no_modifications_to_update_image
      "hospital_privileges/no_modifications_to_update_image.PNG"
    end
	
	def new_image
      "hospital_privileges/new_image.PNG"
    end
	
	def error_required_fields_image
      "hospital_privileges/error_required_fields_image.PNG"
    end
	
	def prov_number_image
      "hospital_privileges/prov_number_image.PNG"
    end
	
	def prov_number_red_image
      "hospital_privileges/prov_number_red_image.PNG"
    end
	
	def hospital_id_number_image
      "hospital_privileges/hospital_id_number_image.PNG"
    end
	
	def date_of_appointment_image
      "hospital_privileges/date_of_appointment_image.PNG"
    end
	
	def hp_1_image
      "hospital_privileges/hp_1_image.PNG"
    end
	
	def eff_date_1_image
      "hospital_privileges/eff_date_1_image.PNG"
    end
	
	def end_date_1_image
      "hospital_privileges/end_date_1_image.PNG"
    end
	
	def verification_date_image
      "hospital_privileges/verification_date_image.PNG"
    end
	
	def process_completed_image
      "hospital_privileges/process_completed_image.PNG"
    end
end