class ImportCsv
	class << self

    def store_csv_data
      file = File.read(Rails.root + "lib/csv_files/connections.csv").split("\n") 
      file.delete_at(0)  
      file.each do |f|
        begin
          f = f.gsub("\"","").split(",").reject!(&:blank?)
          Connection.create(:first_name => f[1], last_name: f[3], company: f[29], job_title: f[31])
        rescue Exception => e
          puts e.message
        end
      end      
    end
  end
end