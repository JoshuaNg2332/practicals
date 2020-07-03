feature 'User can add a new diary entry' do
  scenario 'Can visit the homepage and see a message' do
    visit('/')
    fill_in 'entry_box', :with => "This is my test diary entry."
    click_button('submit')
    expect(page).to have_content("Thank you for your diary entry!")
  end
  scenario 'It saves the users entry' do
    visit('/')
    fill_in 'entry_box', :with => "This is my test diary entry."
    click_button('submit')
    expect(Diary.all).to include("This is my test diary entry.")
  end
end
