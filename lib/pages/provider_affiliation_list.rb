class ProviderAffiliationListPage

  def url
    ""
  end

	def npi_search_cell
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_NPI')
  end

  def date_search_cell
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_YMDEND_dateTextField')
  end

  def facility_name_search_cell
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_FULL_NAME')
  end

  def pg_search_cell
    #$browser.driver.window_handles.last.frame(:name => 'Form').text_field(:name => 'PR0004SG_PROG_NBR')
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_PROG_NBR')
  end

  def affiliation_window_deselect
    $browser.frame(:name => 'Form').div(:id => 'isc_11')
  end

  def address_1_search_cell
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_ADDRESS1')
  end

  def aff_and_irs_search_cell
    $browser.frame(:name => 'Form').text_field(:name => 'PR0004SG_AFF_AND_IRS')
  end

  def hospital_or_medical_search_cell
    $browser.frame(:name => 'Form').text_field(:id => 'isc_1S')
  end



end
