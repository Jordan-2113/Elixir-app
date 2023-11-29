defmodule VoniqueWeb.HomeLive do
  use VoniqueWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:page_title, "VONIQUE")}
  end
end
