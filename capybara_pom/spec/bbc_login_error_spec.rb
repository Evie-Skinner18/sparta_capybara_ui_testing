require 'spec_helper'

#USE CASE TESTING. Finish the journey by adding new methods to the sign in class

#Good descriptions are key to knowing what's going wrong when you have loads of tests.
describe 'Incorrect user details produces valid error' do

#Always write your context as if it's one big test
  context 'It should respond with the correct error when incorrect details are input' do

    it "should produce an error when inputting incorrect password to an invalid account" do
      #Instatniate the superclass in the test so we can access all the classes in our test
      @bbc_site = BbcSite.new

      #That superclass is now saved in the variable @bbc_site. So now we can call the method bbc_homepage on that which
      #opens the giant door of the superclass. So now in front of you you have two smaller doors and these are your two
      #smaller classes (which you can open by calling the methods). We want homepage class so we call .bbc_homepage. And now
      #inside this bbc homepage room you can now see all the methods available for the homepage.
      @bbc_site.bbc_homepage.visit_homepage

      #Click sign in SIGN_IN_LINK

      #Fill in username on sign in page: use your random generator!

      #Fill in password

      #click sign in button

      #Make an assertion that the error is 'Sorry blaba'

    end




  end #end of context



end #end of describe
