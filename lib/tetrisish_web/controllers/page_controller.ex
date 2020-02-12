defmodule TetrisishWeb.PageController do
  use TetrisishWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
