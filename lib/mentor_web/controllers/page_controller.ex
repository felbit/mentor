defmodule MentorWeb.PageController do
  use MentorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
