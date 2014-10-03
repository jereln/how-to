require 'test_helper'

feature 'the steps index shold show all steps for a list' do
  scenario 'visiting the steps index' do
    visit list_steps_path(1)
    page.must_have_content 'Step One'
    page.must_have_content 'Step Two'
  end
end
