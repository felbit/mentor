defmodule MentorWeb.AngebotControllerTest do
  use MentorWeb.ConnCase

  alias Mentor.Angebote

  @create_attrs %{qualitaetskriterium: "some qualitaetskriterium", zielgruppen: [], city: "some city", anmerkungen: "some anmerkungen", genderneutrale_sprache: true, selbsttest: true, suchfunktion: true, beschreibung: "some beschreibung", link: "some link", mm_favorit: true, einfache_sprache: true, bundesland: "some bundesland", corona: true, beratungsangebot: true, recherchiert_von: "some recherchiert_von", region: "some region", beschwerden: [], entstigmatisierende_sprache: true, pdf: true, chatbot: true, app: true, alternative_sprachen: [], selbsthilfegruppe: true, hotline: true, typ: "some typ", video: true, geprueft_von: "some geprueft_von", einzelangebot: true, website: true, ansprechendes_design: true, screening: true, transdiagnostisch: true, titel: "some titel", organisation: "some organisation", kosten: "some kosten", aufnahme: true, psychotherapie: true, forum: true, ansprache: "some ansprache", psychoedukation: true, konfessionell: true, aufnahmevorschlag: true}
  @update_attrs %{qualitaetskriterium: "some updated qualitaetskriterium", zielgruppen: [], city: "some updated city", anmerkungen: "some updated anmerkungen", genderneutrale_sprache: false, selbsttest: false, suchfunktion: false, beschreibung: "some updated beschreibung", link: "some updated link", mm_favorit: false, einfache_sprache: false, bundesland: "some updated bundesland", corona: false, beratungsangebot: false, recherchiert_von: "some updated recherchiert_von", region: "some updated region", beschwerden: [], entstigmatisierende_sprache: false, pdf: false, chatbot: false, app: false, alternative_sprachen: [], selbsthilfegruppe: false, hotline: false, typ: "some updated typ", video: false, geprueft_von: "some updated geprueft_von", einzelangebot: false, website: false, ansprechendes_design: false, screening: false, transdiagnostisch: false, titel: "some updated titel", organisation: "some updated organisation", kosten: "some updated kosten", aufnahme: false, psychotherapie: false, forum: false, ansprache: "some updated ansprache", psychoedukation: false, konfessionell: false, aufnahmevorschlag: false}
  @invalid_attrs %{qualitaetskriterium: nil, zielgruppen: nil, city: nil, anmerkungen: nil, genderneutrale_sprache: nil, selbsttest: nil, suchfunktion: nil, beschreibung: nil, link: nil, mm_favorit: nil, einfache_sprache: nil, bundesland: nil, corona: nil, beratungsangebot: nil, recherchiert_von: nil, region: nil, beschwerden: nil, entstigmatisierende_sprache: nil, pdf: nil, chatbot: nil, app: nil, alternative_sprachen: nil, selbsthilfegruppe: nil, hotline: nil, typ: nil, video: nil, geprueft_von: nil, einzelangebot: nil, website: nil, ansprechendes_design: nil, screening: nil, transdiagnostisch: nil, titel: nil, organisation: nil, kosten: nil, aufnahme: nil, psychotherapie: nil, forum: nil, ansprache: nil, psychoedukation: nil, konfessionell: nil, aufnahmevorschlag: nil}

  def fixture(:angebot) do
    {:ok, angebot} = Angebote.create_angebot(@create_attrs)
    angebot
  end

  describe "index" do
    test "lists all angebote", %{conn: conn} do
      conn = get(conn, Routes.angebot_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Angebote"
    end
  end

  describe "new angebot" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.angebot_path(conn, :new))
      assert html_response(conn, 200) =~ "New Angebot"
    end
  end

  describe "create angebot" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.angebot_path(conn, :create), angebot: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.angebot_path(conn, :show, id)

      conn = get(conn, Routes.angebot_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Angebot"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.angebot_path(conn, :create), angebot: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Angebot"
    end
  end

  describe "edit angebot" do
    setup [:create_angebot]

    test "renders form for editing chosen angebot", %{conn: conn, angebot: angebot} do
      conn = get(conn, Routes.angebot_path(conn, :edit, angebot))
      assert html_response(conn, 200) =~ "Edit Angebot"
    end
  end

  describe "update angebot" do
    setup [:create_angebot]

    test "redirects when data is valid", %{conn: conn, angebot: angebot} do
      conn = put(conn, Routes.angebot_path(conn, :update, angebot), angebot: @update_attrs)
      assert redirected_to(conn) == Routes.angebot_path(conn, :show, angebot)

      conn = get(conn, Routes.angebot_path(conn, :show, angebot))
      assert html_response(conn, 200) =~ "some updated qualitaetskriterium"
    end

    test "renders errors when data is invalid", %{conn: conn, angebot: angebot} do
      conn = put(conn, Routes.angebot_path(conn, :update, angebot), angebot: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Angebot"
    end
  end

  describe "delete angebot" do
    setup [:create_angebot]

    test "deletes chosen angebot", %{conn: conn, angebot: angebot} do
      conn = delete(conn, Routes.angebot_path(conn, :delete, angebot))
      assert redirected_to(conn) == Routes.angebot_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.angebot_path(conn, :show, angebot))
      end
    end
  end

  defp create_angebot(_) do
    angebot = fixture(:angebot)
    %{angebot: angebot}
  end
end
