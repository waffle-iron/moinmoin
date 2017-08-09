# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'
require 'devise'

describe 'user' do
  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  it 'authenticates successfully' do
    visit root_path
    first('.footer').click_link('Sign in')
    login_as(@user, scope: :user)
    binding.pry
    expect(page).to have_content 'Signed in successfully.'
  end
end
