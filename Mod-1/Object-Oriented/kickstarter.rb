
# When a Backer instance is initialized, it should be initialized with a @backed_projects variable set to an empty array. Instances of the Backer class should have an attr_reader for backed projects.
# This way, a backer can report on the projects they back.

# Once both classes have their attributes and readers set up, write a method on the Backer class called back_project() that takes in a Project instance and adds the project to its @backed_projects attribute.
class Backer
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  # write a method on the Backer class called back_project() that takes in a Project instance and adds the project to its @backed_projects attribute.

  def back_project(project)
    backed_projects << project
    project.backers << self
  end
end

##########################################################################

# When a Project instance is initialized, it should be initialized with a @backers variable set to an empty array. Instances of the Project class should have an attr_reader for backers.
# This way, a project can report on who its backers are.

class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  # Similarly, write a method on the Project class called add_backer() that takes in a Backer instance and adds the backer to its @backers attribute.
  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end
end

skillhub = Project.new("Skillhub")
usb = Backer.new("Usb")
p usb
p skillhub
skillhub.add_backer(usb)
p skillhub.backers
p usb.backed_projects
