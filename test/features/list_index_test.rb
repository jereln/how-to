require 'test_helper'

feature 'the list index shold show all lists' do
  scenario 'visiting the lists index' do
    visit lists_path
    page.must_have_content 'List One'
    page.must_have_content 'List Two'
  end
end
