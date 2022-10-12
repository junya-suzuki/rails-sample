table_names = %w(
  customers
  projects
  project_contracts
)

table_names.each do |table_name|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{table_name}.rb")
  if File.exist?(path)
    puts "Creating #{Rails.env} #{table_name}...."
    require(path)
  end
end
