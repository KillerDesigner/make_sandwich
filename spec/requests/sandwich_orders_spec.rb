require 'spec_helper'

describe "SandwichOrders" do
  describe "GET /sandwich_orders" do
  	before { visit new_sandwich_order_path }
    it "displays sandwich selections" do
    	#@sandwich_order_types = SandwichOrderType.create :sandwich_type =>'meaty', :sandwich_type => 'vegan', :sandwich_type => 'vegetarian', :sandwich_type => 'raw'
    	page.has_select?( :text => 'meaty', :text => 'vegan', :text => 'vegetarian', :text => 'raw' )
    end

    it "creates a new sandwich order" do
    	current_path.should == new_sandwich_order_path
    	page.select "meaty", :from => "Sandwich Type"
    	page.click_button "Create Sandwich Order"
    end
  end
end
