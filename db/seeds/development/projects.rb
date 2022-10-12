customers = Customer.all
name = "プロジェクト"

customers.each do |customer|
  3.times do |i|
    Project.create!(customer: customer, name: "#{name}-#{i}")
  end
end