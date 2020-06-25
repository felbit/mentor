defmodule MentorWeb.DiagnoseController do
  use MentorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def age(conn, _params) do
    render(conn, "age.html")
  end

  def info_age(conn, _params) do
    render(conn, "info_age.html")
  end

  def start(conn, _params) do
    render(conn, "start.html")
  end

  def disclaimer(conn, _params) do
    render(conn, "disclaimer.html")
  end
end
