require 'rails_helper'

feature "User create todos" do 
	scenario "successfuly" do
		visit root_path
		click_on "Add a new todo"
	  fill_in "Title", with: "Make it done" 
	  click_on "Submit" 
    
    expect(page).to have_css ".todos li", text: "Make it done" 
	end
end