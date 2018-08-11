class Project
  
  attr_accessor :title, :backers
  
  def initialize(title="")
    @title = title
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    if !backer.backed_project.include?(self)
      backer.add
  end 
  
end