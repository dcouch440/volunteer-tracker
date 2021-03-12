class Project

  attr_accessor :title, :id
  def initialize(attr)
    @title = attr[:title]
    @id = attr.fetch(:id)
  end

  def save()
    @id = DB.exec(
      "INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id"
    ).first["id"].to_i()
  end

  def ==(compare_project)
    self.title == compare_project.title
  end

  def self.all
    projects = []
    all_projects = DB.exec("SELECT * FROM projects")
    
    all_projects.each do |project|
      title = project['title']
      id = project['project']
      projects << Project.new({:title => title, :id => id})
    end

    projects
  end
end