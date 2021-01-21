class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
  end

  def dashboard
    @project = Project.new
    if params[:status].present?
      @projects = Project.where('status = ?', params[:status])
    else
      @projects = Project.all
    end
  end

  def create
    @project =  Project.create(project_name: params[:project_name], description: params[:description], start_date: params[:start_date], end_date: params[:end_date], status: params[:status])
  end
end