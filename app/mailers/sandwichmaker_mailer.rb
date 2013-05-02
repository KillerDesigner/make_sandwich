class SandwichmakerMailer < ActionMailer::Base
  default from: "bestsandwichmaker@gmail.com"

  def confirm_order(sandwich_orders)
  	#@user = user
	@sandwich_order = sandwich_orders
	attachments["cut_sandwich.jpg"] = File.read("#{Rails.root}/app/assets/images/cut_sandwich.jpg")
	#mail(:to => "#{user.name} <#{user.email}>", :subject => "Sandwich Request")
	mail(:to => "bestsandwichmaker@gmail.com", :subject => "Sandwich Request")
	# make_sandwich@generalthings.com
  end
end
