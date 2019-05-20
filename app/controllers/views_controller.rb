class ViewsController < ApplicationController
  def show
    items = Visualization.where(resource_visited_id: params[:id]).order(count: :desc)
    render json: {
      items: items,
      total_views: items.count
    }
  end
end