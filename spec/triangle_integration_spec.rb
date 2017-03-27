require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('returns type of triangle', {:type => :feature}) do
    it('returns triangle type') do
      visit('/')
      fill_in('side_a', :with => '10')
      fill_in('side_b', :with => '10')
      fill_in('side_c', :with => '10')
      click_button('Send')
      expect(page).to have_content('equilateral')
    end
    it('returns triangle type') do
      visit('/')
      fill_in('side_a', :with => '1')
      fill_in('side_b', :with => '2')
      fill_in('side_c', :with => '3')
      click_button('Send')
      expect(page).to have_content('not a triangle')
    end

  end
