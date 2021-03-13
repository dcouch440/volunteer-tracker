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
      projects << Project.new({
        :title => project['title'],
        :id => project['id'].to_i()
      })
    end

    projects
  end

  def self.find(id)
    found = DB.exec("select * FROM projects WHERE id = #{id}").first()
    Project.new({
      :title => found['title'],
      :id => found['id'].to_i()
    })
  end

  def update(attr)
    @title = attr.fetch(:title)
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id}")
  end

  def delete()
    DB.exec("DELETE FROM projects WHERE id = #{@id}")
  end

  def volunteers()
    volunteers = []
    all_volunteers = DB.exec("SELECT * FROM volunteers WHERE project_id = #{@id}")

    all_volunteers.each do |volunteer|
      volunteers << Volunteer.new({
        :name => volunteer['name'],
        :project_id => volunteer['project_id'],
        :id => volunteer['id'].to_i()
      })
    end

    volunteers
  end

end