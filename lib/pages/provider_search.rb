class ProviderSearchPage

  def url
    ""
  end

	def prov_number
    #$browser.driver.window_handles.last.frame(:name => 'Form').text_field(:id => 'txtSRCHPROV')
    $browser.frame(:name => 'Form').text_field(:id => 'txtSRCHPROV')
  end

  def prov_affs
    $browser.frame(:name => 'Form').div(id: 'DesignerInclude').link(:text => 'Prov Affs')
  end

end
