class SandwichmakerMailer < ActionMailer::Base
  default from: "lisafeather+sandwich@gmail.com"

  def confirm_order(user)
	@user = user
	#attachments["sandwich.jpg"] = File.read("#{Rails.root}/public/images/cut_sandwich.jpg")
	mail(:to => "#{user.name} <#{user.email}>", :subject => "Sandwich Request")
  end
end
