defmodule MentorWeb.AngebotController do
  use MentorWeb, :controller

  alias Mentor.Angebote
  alias Mentor.Angebote.Angebot

  def index(conn, _params) do
    angebote = Angebote.list_angebote()
    render(conn, "index.html", angebote: angebote)
  end

  def new(conn, _params) do
    changeset = Angebote.change_angebot(%Angebot{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"angebot" => angebot_params}) do
    angebot_params =
      angebot_params
      |> parse_list("typ")
      |> parse_list("alternative_sprachen")
      |> parse_list("beschwerden")
      |> parse_list("zielgruppen")
      |> parse_list("bundesland")

    case Angebote.create_angebot(angebot_params) do
      {:ok, angebot} ->
        conn
        |> put_flash(:info, "Angebot created successfully.")
        |> redirect(to: Routes.angebot_path(conn, :show, angebot))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    angebot = Angebote.get_angebot!(id)
    render(conn, "show.html", angebot: angebot)
  end

  def edit(conn, %{"id" => id}) do
    angebot = Angebote.get_angebot!(id)
    changeset = Angebote.change_angebot(angebot)
    render(conn, "edit.html", angebot: angebot, changeset: changeset)
  end

  def update(conn, %{"id" => id, "angebot" => angebot_params}) do
    angebot = Angebote.get_angebot!(id)

    case Angebote.update_angebot(angebot, angebot_params) do
      {:ok, angebot} ->
        conn
        |> put_flash(:info, "Angebot updated successfully.")
        |> redirect(to: Routes.angebot_path(conn, :show, angebot))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", angebot: angebot, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    angebot = Angebote.get_angebot!(id)
    {:ok, _angebot} = Angebote.delete_angebot(angebot)

    conn
    |> put_flash(:info, "Angebot deleted successfully.")
    |> redirect(to: Routes.angebot_path(conn, :index))
  end

  def parse_list(params, key) do
    %{^key => s} = params
    %{params | key => String.split(s, ~r/,\s?/) |> Enum.map(fn s -> String.trim(s) end)}
  end
end
