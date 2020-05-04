class Backer
  
  attr_reader :name
  attr_accessor :backed_projects, :project, :backer 
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backer = self 
    project.backers << self
  end
  
  def backer
    @backer = backer
  end
end
  
