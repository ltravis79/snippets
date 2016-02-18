require 'csv'

class CSVFileHandler
	def initialize(file_name, options = {})
		@file_name = file_name
		@options = options
	end

	def read_csv
		data = CSV.read(@file_name, @options)
		data
	end

	def write_csv(data)
		CSV.open(@file_name, "w") do |output_line|
			output_line << data.headers if @options.fetch(:headers, false)
			data.each do |line_data| 
				output_line.puts line_data
			end
		end
	end
end