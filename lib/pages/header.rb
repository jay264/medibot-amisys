class HeaderPage

    def url
      ""
    end
	
	def quit
      $browser.frame(:name => 'Banner').area(:id => 'doLogOut')
    end
	
	def provider
      $browser.frame(:name => 'Banner').div(:id => 'oCMenu_top0')
    end
	
	def credentialing
      $browser.frame(:name => 'Banner').div(:id => 'oCMenu_top1')
    end
	
	def provider_affiliation
     $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'oCMenu_sub_0_3')
    end
	
	def provider_maintenance_credentialing
     $browser.frame(:name => 'Main').frame(:name => 'Form').div(:id => 'oCMenu_sub_0_0')
    end
	
end