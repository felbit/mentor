defmodule Mentor.Repo.Migrations.CreateAnswers do
  use Ecto.Migration

  def change do
    create table(:answers) do
      add :text, :string
      add :question_id, references(:questions)

      timestamps()
    end

  end
end
