module PageWithGoogleSearch

  include Gizmo::PageMixin

  def search_for search_query
    Capybara.within 'form[name="f"]' do
      fill_in 'q', :with => search_query
      click_button 'Google Search'
    end
  end

end
