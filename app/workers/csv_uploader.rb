require 'import_csv'
class CsvUploader
	include Sidekiq::Worker

	def perform
		ImportCsv.store_csv_data
	end
end