require 'spec_helper'

describe "Users" do
  
  describe "Join Page" do
    
    it "should have the content 'Join'" do
      visit '/join'
      page.should have_content('Join')
    end
  end
end