require 'capybara/dsl'

#Make the generator available
require_relative '../generator/generator'



class BbcSignInPage
  #stablish the page constants, then start wriitng the methods that will interact with them
  #include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

  #page object
  USERNAME_FIELD = 'user-identifier-input'


#need to instantiate the GENERATOR superclass in order to use either generator.
#Here we'vedone that and called on it the method random_form_values which opens the
#door to the methods contained inside the random form values gneerator.
#So now we can use the methods that generate
# the info to fill in the form e.g generate_first_name
  def fill_username_field
    @random_name = Generator.new.random_form_values.generate_first_name
    fill_in(USERNAME_FIELD, with: "#{@random_name}")
    puts "Now we're on the sign in page"
  end




end #end of class
