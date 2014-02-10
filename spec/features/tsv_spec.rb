require 'spec_helper'

feature 'TSV' do
  scenario 'User uploads a TSV file' do
    visit '/tsv/new'
    attach_file 'file', Rails.root.join('spec/fixtures/files/example_input.tab')
    click_button 'Submit'
    expect(page).to have_text("Imported file with a gross revenue of $95.00")
  end
end