defmodule ViniciusWeb.PoliticalIssuesLive do
  use ViniciusWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, politican_name: nil)}
  end

  def render(assigns) do
    ~L"""
    <div id="header-container">
        <div class="logo">
            Vinícius
        </div>
        <div class="header-format">
          <a class="menu-item" href="/#">
              Página Inicial
          </a>
          <a class="menu-item" href="/political-issues">
              Atividade Política
          </a>
          <a class="menu-item" href="/#">
              Sobre nós
          </a>
        </div>
    </div>
    """
  end


end
