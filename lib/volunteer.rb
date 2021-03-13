class Volunteer

  attr_accessor :name, :project_id, :id
  def initialize(attr)
    @name = attr.fetch(:name)
    @project_id = attr.fetch(:project_id)
    @id = attr.fetch(:id)
  end

  def self.all()
    volunteers = []
    all_volunteers = DB.exec("SELECT * FROM volunteers")

    all_volunteers.each do |volunteer|
      volunteers << Volunteer.new({
        :name => volunteer['name'],
        :project_id => volunteer['project_id'],
        :id => volunteer['id'].to_i()
      })
    end

    volunteers
  end

  def save()
    @id = DB.exec(
      "INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', '#{@project_id}') RETURNING id"
    ).first["id"].to_i()
  end

  def ==(compare_project)
    self.name == compare_project.name
  end

  def self.find(id)
    found = DB.exec("select * FROM volunteers WHERE id = #{id}").first()
    Volunteer.new({
      :name => found['name'],
      :project_id => found['project_id'],
      :id => found['id'].to_i()
    })
  end

  def update(attr)
    @name = attr.fetch(:name)
    DB.exec("UPDATE volunteers SET name = '#{@name}' WHERE id = #{@id}")
  end

end