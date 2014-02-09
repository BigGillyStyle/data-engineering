module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | DataEngineering"      
    end
  end
end
