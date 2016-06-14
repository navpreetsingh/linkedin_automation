namespace :connections do
	desc "Fetch Data from CSV and store it in database and make certain changes as required."
	task from_csv: :environment do
		CsvUploader.perform_async
	end	
end