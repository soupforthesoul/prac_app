class SubProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @sub_projects = SubProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @sub_project = SubProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @sub_project = SubProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_project }
    end
  end

  # GET /projects/1/edit
  def edit
    @sub_project = SubProject.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @sub_project = SubProject.new(params[:sub_project])

    respond_to do |format|
      if @sub_project.save
        format.html { redirect_to @sub_project, notice: 'SubProject was successfully created.' }
        format.json { render json: @sub_project, status: :created, location: @sub_project }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @sub_project = SubProject.find(params[:id])

    respond_to do |format|
      if @sub_project.update_attributes(params[:sub_project])
        format.html { redirect_to @sub_project, notice: 'SubProject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @sub_project = SubProject.find(params[:id])
    @sub_project.destroy

    respond_to do |format|
      format.html { redirect_to sub_projects_url }
      format.json { head :no_content }
    end
  end
end
