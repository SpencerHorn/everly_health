require 'watir'

Before do |scenario|

  if ENV['RUN_LOCAL']
    case ENV['BROWSER']
      when 'chrome'
        @browser = Watir::Browser.new :chrome
        @browser.window.maximize
      when 'firefox'
        @browser = Watir::Browser.new :firefox
        @browser.window.maximize
      when 'headless'
        @browser = Watir::Browser.new :firefox, headless: true
    else
      # Default when nothing is specified
      @browser = Watir::Browser.new :chrome
      @browser.window.maximize
    end
  end

end

After do |scenario|
  if ENV['RUN_LOCAL']
    @browser.quit
  end
end