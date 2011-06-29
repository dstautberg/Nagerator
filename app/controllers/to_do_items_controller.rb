class ToDoItemsController < ApplicationController
  # GET /to_do_items
  # GET /to_do_items.xml
  def index
    @to_do_items = ToDoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @to_do_items }
    end
  end

  # GET /to_do_items/1
  # GET /to_do_items/1.xml
  def show
    @to_do_item = ToDoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @to_do_item }
    end
  end

  # GET /to_do_items/new
  # GET /to_do_items/new.xml
  def new
    @to_do_item = ToDoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @to_do_item }
    end
  end

  # GET /to_do_items/1/edit
  def edit
    @to_do_item = ToDoItem.find(params[:id])
  end

  # POST /to_do_items
  # POST /to_do_items.xml
  def create
    @to_do_item = ToDoItem.new(params[:to_do_item])

    respond_to do |format|
      if @to_do_item.save
        format.html { redirect_to(@to_do_item, :notice => 'To do item was successfully created.') }
        format.xml  { render :xml => @to_do_item, :status => :created, :location => @to_do_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @to_do_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /to_do_items/1
  # PUT /to_do_items/1.xml
  def update
    @to_do_item = ToDoItem.find(params[:id])

    respond_to do |format|
      if @to_do_item.update_attributes(params[:to_do_item])
        format.html { redirect_to(@to_do_item, :notice => 'To do item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @to_do_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_items/1
  # DELETE /to_do_items/1.xml
  def destroy
    @to_do_item = ToDoItem.find(params[:id])
    @to_do_item.destroy

    respond_to do |format|
      format.html { redirect_to(to_do_items_url) }
      format.xml  { head :ok }
    end
  end
end
