require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/cars'

    # this will also fail if the route doesn't exist
    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page). to have_content('1968 Ford Mustang has been created. It costs 2300')
  end

    scenario 'can create 2 cars' do
      visit '/cars'

      click_link 'New Car'

      fill_in 'Make', with: 'Ford'
      fill_in 'Model', with: 'Mustang'
      fill_in 'Year', with: '1968'
      fill_in 'Price', with: '2300'

      click_button 'Create Car'

      click_link 'New Car'

      fill_in 'Make', with: 'Nissan'
      fill_in 'Model', with: 'Versa'
      fill_in 'Year', with: '2014'
      fill_in 'Price', with: '10000'

      click_button 'Create Car'

      expect(page). to have_content('2014 Nissan Versa has been created. It costs 10000')

    end
end

feature 'Editing Cars' do
  scenario 'can create and edit a car' do
    visit '/cars'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    visit '/cars/1/edit'

  end
end
