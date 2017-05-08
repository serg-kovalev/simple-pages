class PagesController < ApplicationController
  def index
    @pages = Page.order(:name).page(params[:page])
  end

  def show
    @page = Page.find(params[:id])
    render html: @page.body.html_safe, layout: @page.with_layout
  end
end

