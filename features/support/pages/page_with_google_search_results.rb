module PageWithGoogleSearchResults

  include Gizmo::PageMixin

  def get_results
    all_text_results
  end

  private
  def struct_result result
    element_struct do |es|
      es.title = result.find('span.tl').text
      es.body = result.find('div.s').text
    end
  end

  def all_text_results
    results = []
    Capybara.within 'ol#rso' do
      all('li.g:not(#imagebox)').each do |result|
        #news links have a different layout, looking for a css selector to avoid them
        results.push struct_result find('div.vsc') if result.has_selector? 'div.vsc'
      end
    end
    results
  end

end

