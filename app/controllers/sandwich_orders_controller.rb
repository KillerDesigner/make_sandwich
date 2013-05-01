class SandwichOrdersController < ApplicationController

  # GET /sandwich_order/new
  def new
    @sandwich_order = SandwichOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sandwich_order }
    end
  end


  def show
    @sandwich_order = SandwichOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sandwich_order }
    end
  end

  # POST /sandwich_order
  def create
    @sandwich_order = SandwichOrder.new(params[:sandwich_order])
    puts '******************************'
    puts params[:sandwich_type]

    respond_to do |format|
      if @sandwich_order.save
        SandwichmakerMailer.confirm_order(@sandwich_order).deliver
        format.html { redirect_to @sandwich_order, notice: 'Sandwich order was successfully created.' }
        format.json { render json: @sandwich_order, status: :created, location: @sandwich_order }
      else
        format.html { render action: "new" }
        format.json { render json: @sandwich_order.errors, status: :unprocessable_entity }
      end
    end
  end
end
