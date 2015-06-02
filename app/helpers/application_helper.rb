module ApplicationHelper
	
	# Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title = '')                     # Method def, optional arg
    base_title = "Ruby on Rails Tutorial Sample App"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      page_title + " | " + base_title                 # String concatenation
    end
  end

  def content_for_sidebar(&block)
    @show_side_bar = true
    content_for :sidebar do
      capture(&block)
    end
  end
end
