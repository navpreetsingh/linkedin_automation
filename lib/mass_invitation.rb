require 'watir-webdriver'
class MassInvitation
	class << self

		def invite
			browser = Watir::Browser.new
			browser.goto 'https://www.linkedin.com/'
			browser.text_field(:id => 'login-email').set 'navpreet.singh.k@gmail.com'
			browser.text_field(:id => 'login-password').set '1313waheguru'
			browser.form(:class=>"login-form").inputs[5].click
			browser.goto 'https://www.linkedin.com/people/pymk?trk=hp-rr-pymk'
		end

	end
end