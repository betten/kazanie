module ProjectsHelper
  
  def format_text(text)
    simple_format h(text).gsub(/\r\n/, '<br />')
  end

end
