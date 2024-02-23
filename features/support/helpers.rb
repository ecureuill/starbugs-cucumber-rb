Dir[File.join(File.dirname(__FILE__), "../pages/*.rb")].each {|file| require file}
Dir[File.join(File.dirname(__FILE__), "../pages/components/*.rb")].each {|file| require file}
require 'yaml'

module Pages
    def home
      @home ||= HomePage.new
    end
    def checkout
      @checkout ||= CheckoutPage.new
    end
    def dialog
      @dialog ||= DialogComponent.new
    end
    def order
      @order ||= OrderPage.new
    end
end

module EnvVariables
  def self.env
    @env ||= YAML.load_file('env.yaml')
  end

  def self.SELENIUM_HOST
    env['SELENIUM_HOST']
  end

  def self.SELENIUM_PORT
    env['SELENIUM_PORT']
  end

  def self.BASE_URL
    env['BASE_URL']
  end
end