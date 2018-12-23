require 'rails_helper'
 
RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "show exchange value" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'source_currency')
      select('USD', from: 'target_currency')
      fill_in 'amount', with: '10'
    end
    click_button 'CONVERTER'
 
    # save_and_open_page
    expect(page).to have_content("value")
  end
end