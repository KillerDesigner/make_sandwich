class SandwichOrdersController < ApplicationController

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

  def edit
    @sandwich_order = SandwichOrder.find(params[:id])
  end

  def update
    @sandwich_order = SandwichOrder.find(params[:id])

    respond_to do |format|
      if @sandwich_order.update_attributes(params[:sandwich_order])
      	SandwichmakerMailer.confirm_order(@sandwich_order).deliver
        format.html { redirect_to @sandwich_order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sandwich_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @sandwich_order = SandwichOrder.new(params[:sandwich_order])
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
