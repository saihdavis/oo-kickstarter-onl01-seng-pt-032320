class Backer
  
  attr_reader :name, :backed_projects
  
  @backed_projects = []
  
  def initialize(name)
    @name = name
  end
  
  def backed_projects
    backproj = ProjectBacker.all.select {|back| back.backer == self}
    backproj.map {|back| back.project}
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

end
  
