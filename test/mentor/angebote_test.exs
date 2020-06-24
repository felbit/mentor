defmodule Mentor.AngeboteTest do
  use Mentor.DataCase

  alias Mentor.Angebote

  describe "angebote" do
    alias Mentor.Angebote.Angebot

    @valid_attrs %{qualitaetskriterium: "some qualitaetskriterium", zielgruppen: [], city: "some city", anmerkungen: "some anmerkungen", genderneutrale_sprache: true, selbsttest: true, suchfunktion: true, beschreibung: "some beschreibung", link: "some link", mm_favorit: true, einfache_sprache: true, bundesland: "some bundesland", corona: true, beratungsangebot: true, recherchiert_von: "some recherchiert_von", region: "some region", beschwerden: [], entstigmatisierende_sprache: true, pdf: true, chatbot: true, app: true, alternative_sprachen: [], selbsthilfegruppe: true, hotline: true, typ: "some typ", video: true, geprueft_von: "some geprueft_von", einzelangebot: true, website: true, ansprechendes_design: true, screening: true, transdiagnostisch: true, titel: "some titel", organisation: "some organisation", kosten: "some kosten", aufnahme: true, psychotherapie: true, forum: true, ansprache: "some ansprache", psychoedukation: true, konfessionell: true, aufnahmevorschlag: true}
    @update_attrs %{qualitaetskriterium: "some updated qualitaetskriterium", zielgruppen: [], city: "some updated city", anmerkungen: "some updated anmerkungen", genderneutrale_sprache: false, selbsttest: false, suchfunktion: false, beschreibung: "some updated beschreibung", link: "some updated link", mm_favorit: false, einfache_sprache: false, bundesland: "some updated bundesland", corona: false, beratungsangebot: false, recherchiert_von: "some updated recherchiert_von", region: "some updated region", beschwerden: [], entstigmatisierende_sprache: false, pdf: false, chatbot: false, app: false, alternative_sprachen: [], selbsthilfegruppe: false, hotline: false, typ: "some updated typ", video: false, geprueft_von: "some updated geprueft_von", einzelangebot: false, website: false, ansprechendes_design: false, screening: false, transdiagnostisch: false, titel: "some updated titel", organisation: "some updated organisation", kosten: "some updated kosten", aufnahme: false, psychotherapie: false, forum: false, ansprache: "some updated ansprache", psychoedukation: false, konfessionell: false, aufnahmevorschlag: false}
    @invalid_attrs %{qualitaetskriterium: nil, zielgruppen: nil, city: nil, anmerkungen: nil, genderneutrale_sprache: nil, selbsttest: nil, suchfunktion: nil, beschreibung: nil, link: nil, mm_favorit: nil, einfache_sprache: nil, bundesland: nil, corona: nil, beratungsangebot: nil, recherchiert_von: nil, region: nil, beschwerden: nil, entstigmatisierende_sprache: nil, pdf: nil, chatbot: nil, app: nil, alternative_sprachen: nil, selbsthilfegruppe: nil, hotline: nil, typ: nil, video: nil, geprueft_von: nil, einzelangebot: nil, website: nil, ansprechendes_design: nil, screening: nil, transdiagnostisch: nil, titel: nil, organisation: nil, kosten: nil, aufnahme: nil, psychotherapie: nil, forum: nil, ansprache: nil, psychoedukation: nil, konfessionell: nil, aufnahmevorschlag: nil}

    def angebot_fixture(attrs \\ %{}) do
      {:ok, angebot} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Angebote.create_angebot()

      angebot
    end

    test "list_angebote/0 returns all angebote" do
      angebot = angebot_fixture()
      assert Angebote.list_angebote() == [angebot]
    end

    test "get_angebot!/1 returns the angebot with given id" do
      angebot = angebot_fixture()
      assert Angebote.get_angebot!(angebot.id) == angebot
    end

    test "create_angebot/1 with valid data creates a angebot" do
      assert {:ok, %Angebot{} = angebot} = Angebote.create_angebot(@valid_attrs)
      assert angebot.aufnahmevorschlag == true
      assert angebot.konfessionell == true
      assert angebot.psychoedukation == true
      assert angebot.ansprache == "some ansprache"
      assert angebot.forum == true
      assert angebot.psychotherapie == true
      assert angebot.aufnahme == true
      assert angebot.kosten == "some kosten"
      assert angebot.organisation == "some organisation"
      assert angebot.titel == "some titel"
      assert angebot.transdiagnostisch == true
      assert angebot.screening == true
      assert angebot.ansprechendes_design == true
      assert angebot.website == true
      assert angebot.einzelangebot == true
      assert angebot.geprueft_von == "some geprueft_von"
      assert angebot.video == true
      assert angebot.typ == "some typ"
      assert angebot.hotline == true
      assert angebot.selbsthilfegruppe == true
      assert angebot.alternative_sprachen == []
      assert angebot.app == true
      assert angebot.chatbot == true
      assert angebot.pdf == true
      assert angebot.entstigmatisierende_sprache == true
      assert angebot.beschwerden == []
      assert angebot.region == "some region"
      assert angebot.recherchiert_von == "some recherchiert_von"
      assert angebot.beratungsangebot == true
      assert angebot.corona == true
      assert angebot.bundesland == "some bundesland"
      assert angebot.einfache_sprache == true
      assert angebot.mm_favorit == true
      assert angebot.link == "some link"
      assert angebot.beschreibung == "some beschreibung"
      assert angebot.suchfunktion == true
      assert angebot.selbsttest == true
      assert angebot.genderneutrale_sprache == true
      assert angebot.anmerkungen == "some anmerkungen"
      assert angebot.city == "some city"
      assert angebot.zielgruppen == []
      assert angebot.qualitaetskriterium == "some qualitaetskriterium"
    end

    test "create_angebot/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Angebote.create_angebot(@invalid_attrs)
    end

    test "update_angebot/2 with valid data updates the angebot" do
      angebot = angebot_fixture()
      assert {:ok, %Angebot{} = angebot} = Angebote.update_angebot(angebot, @update_attrs)
      assert angebot.aufnahmevorschlag == false
      assert angebot.konfessionell == false
      assert angebot.psychoedukation == false
      assert angebot.ansprache == "some updated ansprache"
      assert angebot.forum == false
      assert angebot.psychotherapie == false
      assert angebot.aufnahme == false
      assert angebot.kosten == "some updated kosten"
      assert angebot.organisation == "some updated organisation"
      assert angebot.titel == "some updated titel"
      assert angebot.transdiagnostisch == false
      assert angebot.screening == false
      assert angebot.ansprechendes_design == false
      assert angebot.website == false
      assert angebot.einzelangebot == false
      assert angebot.geprueft_von == "some updated geprueft_von"
      assert angebot.video == false
      assert angebot.typ == "some updated typ"
      assert angebot.hotline == false
      assert angebot.selbsthilfegruppe == false
      assert angebot.alternative_sprachen == []
      assert angebot.app == false
      assert angebot.chatbot == false
      assert angebot.pdf == false
      assert angebot.entstigmatisierende_sprache == false
      assert angebot.beschwerden == []
      assert angebot.region == "some updated region"
      assert angebot.recherchiert_von == "some updated recherchiert_von"
      assert angebot.beratungsangebot == false
      assert angebot.corona == false
      assert angebot.bundesland == "some updated bundesland"
      assert angebot.einfache_sprache == false
      assert angebot.mm_favorit == false
      assert angebot.link == "some updated link"
      assert angebot.beschreibung == "some updated beschreibung"
      assert angebot.suchfunktion == false
      assert angebot.selbsttest == false
      assert angebot.genderneutrale_sprache == false
      assert angebot.anmerkungen == "some updated anmerkungen"
      assert angebot.city == "some updated city"
      assert angebot.zielgruppen == []
      assert angebot.qualitaetskriterium == "some updated qualitaetskriterium"
    end

    test "update_angebot/2 with invalid data returns error changeset" do
      angebot = angebot_fixture()
      assert {:error, %Ecto.Changeset{}} = Angebote.update_angebot(angebot, @invalid_attrs)
      assert angebot == Angebote.get_angebot!(angebot.id)
    end

    test "delete_angebot/1 deletes the angebot" do
      angebot = angebot_fixture()
      assert {:ok, %Angebot{}} = Angebote.delete_angebot(angebot)
      assert_raise Ecto.NoResultsError, fn -> Angebote.get_angebot!(angebot.id) end
    end

    test "change_angebot/1 returns a angebot changeset" do
      angebot = angebot_fixture()
      assert %Ecto.Changeset{} = Angebote.change_angebot(angebot)
    end
  end
end
