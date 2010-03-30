module PageWithGithubRepoDetails
  
  def valid?
    has_selector?("div.repohead")
  end
  
  def repo_details
    OpenStruct do |repo_details|
      repo_details.name = @document.css("h1>strong a").inner_text
      repo_details.author = @document.css("h1>a").inner_text
    end
  end

end