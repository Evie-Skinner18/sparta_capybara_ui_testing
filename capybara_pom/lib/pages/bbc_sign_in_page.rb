require 'capybara/dsl'
require_relative '../generator/generator'



class BbcSignInPage
  #stablish the page constants, then start wriitng the methods that will interact with them
  #include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

  #page object
  USERNAME_FIELD = 'user-identifier-input'



  def fill_username_field
    @random_name = Generator.new.random_form_values.generate_first_name
    fill_in(USERNAME_FIELD, with: "#{@random_name}")
    puts "Now we're on the sign in page"
  end




end #end of class
