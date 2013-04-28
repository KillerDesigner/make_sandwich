class SandwichmakerMailer < ActionMailer::Base
  default from: "lisafeather+sandwich@gmail.com"

  def confirm_order(user)
	@user = user
	attachments["cut_sandwich.jpg"] = File.read("#{Rails.root}/app/assets/images/cut_sandwich.jpg")
	mail(:to => "#{user.name} <#{user.email}>", :subject => "Sandwich Request")
  end
end

#/Users/lisafeather/workspace/learn_stuff/make_sandwich/public/images/cut_sandwich.jpg
#/Users/lisafeather/workspace/learn_stuff/make_sandwich/app/assets/images