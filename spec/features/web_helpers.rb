def setup
visit '/names'
fill_in 'name1', with: "TOM"
fill_in 'name2', with: "AHMED"
click_button 'Submit'
end
