defmodule Mentor.Angebote.Angebot do
  use Ecto.Schema
  import Ecto.Changeset

  schema "angebote" do
    field :titel, :string
    field :beschreibung, :string
    field :link, :string
    field :typ, {:array, :string}
    field :qualitaetskriterium, :string

    field :konfessionell, :boolean, default: false
    field :psychoedukation, :boolean, default: false
    field :ansprache, :string
    field :forum, :boolean, default: false
    field :psychotherapie, :boolean, default: false
    field :kosten, :string
    field :organisation, :string
    field :transdiagnostisch, :boolean, default: false
    field :screening, :boolean, default: false
    field :ansprechendes_design, :boolean, default: false
    field :einzelangebot, :boolean, default: false
    field :video, :boolean, default: false
    field :hotline, :boolean, default: false
    field :selbsthilfegruppe, :boolean, default: false
    field :alternative_sprachen, {:array, :string}
    field :app, :boolean, default: false
    field :website, :boolean, default: false
    field :chatbot, :boolean, default: false
    field :pdf, :boolean, default: false
    field :entstigmatisierende_sprache, :boolean, default: false
    field :beschwerden, {:array, :string}
    field :beratungsangebot, :boolean, default: false
    field :corona, :boolean, default: false
    field :einfache_sprache, :boolean, default: false
    field :suchfunktion, :boolean, default: false
    field :selbsttest, :boolean, default: false
    field :genderneutrale_sprache, :boolean, default: false
    field :zielgruppen, {:array, :string}

    field :region, :string
    field :bundesland, {:array, :string}
    field :city, :string, default: "-"

    field :anmerkungen, :string
    field :recherchiert_von, :string
    field :geprueft_von, :string
    field :aufnahmevorschlag, :boolean, default: false
    field :aufnahme, :boolean, default: false

    field :mm_favorit, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(angebot, attrs) do
    angebot
    |> cast(attrs, [
      :titel,
      :beschreibung,
      :link,
      :qualitaetskriterium,
      :typ,
      :einzelangebot,
      :suchfunktion,
      :psychotherapie,
      :beratungsangebot,
      :hotline,
      :app,
      :website,
      :pdf,
      :video,
      :selbsthilfegruppe,
      :forum,
      :chatbot,
      :selbsttest,
      :psychoedukation,
      :corona,
      :alternative_sprachen,
      :einfache_sprache,
      :entstigmatisierende_sprache,
      :genderneutrale_sprache,
      :ansprache,
      :ansprechendes_design,
      :transdiagnostisch,
      :beschwerden,
      :zielgruppen,
      :region,
      :bundesland,
      :city,
      :organisation,
      :konfessionell,
      :kosten,
      :anmerkungen,
      :recherchiert_von,
      :geprueft_von,
      :aufnahmevorschlag,
      :aufnahme,
      :screening,
      :mm_favorit
    ])
    |> validate_required([
      :titel,
      :beschreibung,
      :link,
      :qualitaetskriterium,
      :typ,
      :einzelangebot,
      :suchfunktion,
      :psychotherapie,
      :beratungsangebot,
      :hotline,
      :app,
      :website,
      :pdf,
      :video,
      :selbsthilfegruppe,
      :forum,
      :chatbot,
      :selbsttest,
      :psychoedukation,
      :corona,
      :alternative_sprachen,
      :einfache_sprache,
      :entstigmatisierende_sprache,
      :genderneutrale_sprache,
      :ansprache,
      :ansprechendes_design,
      :transdiagnostisch,
      :beschwerden,
      :zielgruppen,
      :region,
      :bundesland,
      :city,
      :organisation,
      :konfessionell,
      :kosten,
      :anmerkungen,
      :recherchiert_von,
      :geprueft_von,
      :aufnahmevorschlag,
      :aufnahme,
      :screening,
      :mm_favorit
    ])
  end
end
