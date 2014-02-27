class GenerateAssignments
  # def integrate
  #   @groups = Author.new.scrape_authors * 6
  #   BlogDate.new.find_weekdays.each do |date|
  #     puts date
  #     puts @groups.pop(4)
  #   end
  # end

  def make_index!
    template_doc = File.open("app/views/index.html.erb")
    template = ERB.new(template_doc.read)
    File.write("_site/index.html", template.result(binding))
  end  
end