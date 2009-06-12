class TyposController < ApplicationController
  # GET /typos
  # GET /typos.xml
  def index
    @typos = Typo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @typos }
    end
  end

  # GET /typos/1
  # GET /typos/1.xml
  def show
    @typo = Typo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @typo }
    end
  end

  # GET /typos/new
  # GET /typos/new.xml
  def new
    @typo = Typo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @typo }
    end
  end

  # GET /typos/1/edit
  def edit
    @typo = Typo.find(params[:id])
  end

  # POST /typos
  # POST /typos.xml
  def create
    @typo = Typo.new(params[:typo])

    respond_to do |format|
      if @typo.save
        flash[:notice] = 'Typo was successfully created.'
        format.html { redirect_to typos_path }
        format.xml  { render :xml => @typo, :status => :created, :location => @typo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @typo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /typos/1
  # PUT /typos/1.xml
  def update
    @typo = Typo.find(params[:id])

    respond_to do |format|
      if @typo.update_attributes(params[:typo])
        flash[:notice] = 'Typo was successfully updated.'
        format.html { redirect_to typos_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @typo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /typos/1
  # DELETE /typos/1.xml
  def destroy
    @typo = Typo.find(params[:id])
    @typo.destroy

    respond_to do |format|
      format.html { redirect_to(typos_url) }
      format.xml  { head :ok }
    end
  end
end
