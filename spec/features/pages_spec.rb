# frozen_string_literal: true

require 'spec_helper'

describe 'Pages' do
  describe 'navigation' do
    shared_examples_for 'main page' do |path_name|
      before { visit send(path_name) }

      it "should be on #{path_name}" do
        page.should have_link('Home')
        page.should have_link('FAQ')
        page.should have_link('Contact Us')
        # page.should have_link('Login')
      end
    end

    it_should_behave_like 'main_page', :root_path
    it_should_behave_like 'main_page', :faq_path
    it_should_behave_like 'main_page', :contact_path
    # it_should_behave_like 'main_page', :login_path
  end
end
