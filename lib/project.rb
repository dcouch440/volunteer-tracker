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

  def self.all()
    projects = []
    all_projects = DB.exec("SELECT * FROM projects")
    
    all_projects.each do |project|
      title = project['title']
      id = project['project'].to_i()
      projects << Project.new({:title => title, :id => id})
    end
  
    projects
  end

  def self.find(id)
    found = DB.exec("select * FROM projects WHERE id = #{id}").first()
    id , title = found.values_at("id", "title")
    Project.new({:id => (id.to_i), :title => title})
  end

  def update(attr)
    @title = attr.fetch(:title)
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id}")
  end

  def delete 
    DB.exec("DELETE FROM projects WHERE id = #{@id}")
  end

end