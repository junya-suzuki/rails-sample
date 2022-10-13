name = "テスト 太郎"
3.times do |i|
  Customer.create!(name: "#{name}-#{i}")
end