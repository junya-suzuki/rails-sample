name = "テスト 太郎"
10.times do |i|
  Customer.create!(name: "#{name}-#{i}")
end