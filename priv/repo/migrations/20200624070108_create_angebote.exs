defmodule Mentor.Repo.Migrations.CreateAngebote do
  use Ecto.Migration

  def change do
    create table(:angebote) do
      add :titel, :string
      add :beschreibung, :string, null: true
      add :link, :string, null: true
      add :qualitaetskriterium, :string
      add :typ, {:array, :string}
      add :einzelangebot, :boolean, default: false, null: false
      add :suchfunktion, :boolean, default: false, null: false
      add :psychotherapie, :boolean, default: false, null: false
      add :beratungsangebot, :boolean, default: false, null: false
      add :hotline, :boolean, default: false, null: false
      add :app, :boolean, default: false, null: false
      add :website, :boolean, default: false, null: false
      add :pdf, :boolean, default: false, null: false
      add :video, :boolean, default: false, null: false
      add :selbsthilfegruppe, :boolean, default: false, null: false
      add :forum, :boolean, default: false, null: false
      add :chatbot, :boolean, default: false, null: false
      add :selbsttest, :boolean, default: false, null: false
      add :psychoedukation, :boolean, default: false, null: false
      add :corona, :boolean, default: false, null: false
      add :alternative_sprachen, {:array, :string}
      add :einfache_sprache, :boolean, default: false, null: false
      add :entstigmatisierende_sprache, :boolean, default: false, null: false
      add :genderneutrale_sprache, :boolean, default: false, null: false
      add :ansprache, :string
      add :ansprechendes_design, :boolean, default: false, null: false
      add :transdiagnostisch, :boolean, default: false, null: false
      add :beschwerden, {:array, :string}
      add :zielgruppen, {:array, :string}
      add :region, :string
      add :bundesland, {:array, :string}, null: true
      add :city, :string, null: true
      add :organisation, :string, null: false
      add :konfessionell, :boolean, default: false, null: false
      add :kosten, :string
      add :anmerkungen, :string, null: true
      add :recherchiert_von, :string
      add :geprueft_von, :string, null: true
      add :aufnahmevorschlag, :boolean, default: false, null: false
      add :aufnahme, :boolean, default: false, null: true
      add :screening, :boolean, default: false, null: false
      add :mm_favorit, :boolean, default: false, null: false

      timestamps()
    end

  end
end
