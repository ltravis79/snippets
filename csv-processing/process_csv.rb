require_relative 'csv_file_handler'

my_file = CSVFileHandler.new('test_file.csv')

all_data = my_file.read_csv

puts "All Data..."
puts "#{all_data}"

# puts all_data[0]
# puts "First Task..."
# puts all_data[0][:task]
# puts "First Comment..."
# puts all_data[0][:comment]

# all_data.delete(0)
all_data.push(["Bluth", "Oscar"])
p all_data

my_file.write_csv(all_data)