defmodule VoniqueWeb.ContactusLive do
  use VoniqueWeb, :live_view


  @impl true
  def mount(_params, _session, socket) do
    # seo_meta_lang = Content.get_page_seo_meta_lang(:home, socket.assigns.lang)

    {:ok,
     socket
     |> assign(:page_title, "CONTACT US")
   }
  end

end
