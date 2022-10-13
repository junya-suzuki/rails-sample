customers = Customer.all
name = "プロジェクト"

customers.each_with_index do |customer, i|
  3.times do |ii|
    Project.create!(customer: customer, name: "#{name}-#{i}-#{ii}")
  end
end