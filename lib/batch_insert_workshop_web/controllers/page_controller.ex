defmodule BatchInsertWorkshopWeb.PageController do
  use BatchInsertWorkshopWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
