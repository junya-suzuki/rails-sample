projects = Project.all
name = "契約"

projects.each do |project|
  3.times do |i|
    ProjectContract.create!(project: project, customer_id: project.customer_id, name: "#{name}-#{i}")
  end
end