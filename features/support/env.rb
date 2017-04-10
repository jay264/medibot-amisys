require 'watir-webdriver'
require 'selenium-webdriver'
require 'active_support/inflector'
require 'i18n'
require 'java'
require 'sikulix'
require 'win32-clipboard'
require 'spreadsheet'

include Win32

#include Sikulix

class SikuliNavigator
  def initialize
    @screen = Sikulix::Screen.new
  end
end

World {SikuliNavigator.new}

$execution = YAML::load_file(File.expand_path('data/execution.yml'))
$environment = YAML::load_file(File.expand_path('data/environments.yml'))[$execution['environment']]

$image_directory = "C:\\Users\\#{ENV['USERNAME']}\\MediGold\\medibot-amisys\\lib\\pages\\"

I18n.enforce_available_locales = false

Java::OrgSikuliScript::ImagePath.setBundlePath("#{Dir.pwd}/lib/pages/")

# require all pages
Dir[File.expand_path('lib/pages/*.rb')].each do |page|
  require page
end

URLS = {   'PROD' => "http://mtcarmel-wcaa.dstcorp.net/amisys-web/Controller?view=jsp/Pportal.jsp",
           'DEV' => "http://mtcarmel-wcaa.dstcorp.net:7138/amisys-web/Controller?view=jsp/Pportal.jsp",
           'NONE' => "none"
}

if ENV['URL'] == 'PROD'
  $url = URLS['PROD']
elsif ENV['URL'] == 'NONE'
  $url = "none"
else
  $url = URLS['DEV']
end

Before do
  if $url != "none"
    Watir::always_locate = false
    $browser = Watir::Browser.new $execution['browser'].to_sym
    $browser.driver.manage.window.maximize
    $browser.goto($url)
    $variable_storage = Array.new
  end
end

#After do |scenario|
    #if scenario.failed?
      #path = "screenshots"
      #file = "#{scenario.name.downcase.parameterize.underscore}_#{Time.now.strftime("%m%d%y")}_#{Time.now.strftime("%H%M")}.png"
      #Dir::mkdir(path) if not File.directory?(path)
      #$browser.driver.save_screenshot("./#{path}/#{file}")
      #embed "../#{path}/#{file}", 'image/png'
    #end
#end

After do |scenario|
  if $url != "none"
    if scenario.failed?
      path = "screenshots"
      file = "#{scenario.name.downcase.parameterize.underscore}_#{Time.now.strftime("%m%d%y")}_#{Time.now.strftime("%H%M")}.png"
      Dir::mkdir(path) if not File.directory?(path)
      $browser.driver.save_screenshot("Y:/CO/CB/Apps/MCHPConfData/essette/MediBot_Amisys/#{path}/#{file}")
      embed "../#{path}/#{file}", 'image/png'
      $browser.send_keys(:'f8')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.send_keys(:'f8')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.send_keys(:'f8')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.send_keys(:'f8')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.send_keys(:'f8')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.send_keys(:'f8')
      sleep 1
      steps %{
        And in the "Functions Menu" page I click on "Void"
        And the test pauses for "3" seconds
        And I press "Control + S"
        And the test pauses for "3" seconds }
      sleep 1
      #$browser.windows.last.use
      $browser.send_keys(:control, 'q')
      sleep 1
      $browser.alert.ok if $browser.alert.exists?
      @screen.type Sikulix::Key.ENTER
      sleep 1
      $browser.driver.switch_to.window($browser.driver.window_handles.last)
      $browser.send_keys :enter
      @screen.type Sikulix::Key.ENTER
      $browser.close
      if $browser
        $browser.alert.ok if $browser.alert.exists?
        @screen.type Sikulix::Key.ENTER
      end
    end
  end
end
