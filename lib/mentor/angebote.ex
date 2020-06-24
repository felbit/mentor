defmodule Mentor.Angebote do
  @moduledoc """
  The Angebote context.
  """

  import Ecto.Query, warn: false
  alias Mentor.Repo

  alias Mentor.Angebote.Angebot

  @doc """
  Returns the list of angebote.

  ## Examples

      iex> list_angebote()
      [%Angebot{}, ...]

  """
  def list_angebote do
    Repo.all(Angebot)
  end

  @doc """
  Gets a single angebot.

  Raises `Ecto.NoResultsError` if the Angebot does not exist.

  ## Examples

      iex> get_angebot!(123)
      %Angebot{}

      iex> get_angebot!(456)
      ** (Ecto.NoResultsError)

  """
  def get_angebot!(id), do: Repo.get!(Angebot, id)

  @doc """
  Creates a angebot.

  ## Examples

      iex> create_angebot(%{field: value})
      {:ok, %Angebot{}}

      iex> create_angebot(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_angebot(attrs \\ %{}) do
    %Angebot{}
    |> Angebot.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a angebot.

  ## Examples

      iex> update_angebot(angebot, %{field: new_value})
      {:ok, %Angebot{}}

      iex> update_angebot(angebot, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_angebot(%Angebot{} = angebot, attrs) do
    angebot
    |> Angebot.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a angebot.

  ## Examples

      iex> delete_angebot(angebot)
      {:ok, %Angebot{}}

      iex> delete_angebot(angebot)
      {:error, %Ecto.Changeset{}}

  """
  def delete_angebot(%Angebot{} = angebot) do
    Repo.delete(angebot)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking angebot changes.

  ## Examples

      iex> change_angebot(angebot)
      %Ecto.Changeset{data: %Angebot{}}

  """
  def change_angebot(%Angebot{} = angebot, attrs \\ %{}) do
    Angebot.changeset(angebot, attrs)
  end
end
