defmodule ViniciusWeb.PageLive do
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
    <div class="flex max-w-md m-auto my-8 bg-white shadow-lg rounded-lg overflow-hidden">
        <div class="lg:flex lg:items-center lg:justify-between py-12 px-4 sm:px-6 lg:py-12 lg:px-8 z-20">
            <h2 class="text-3xl font-bold text-black dark:text-white sm:text-4xl">
                <span class="block">
                    Os políticos fazem o qué?
                </span>
                <span class="text-blue-500">
                    Veja os dados!
                </span>
            </h2>
            <img src="images/parlamento.jpg" class="mx-10 w-50 h-50 rounded-2xl"/>
        </div>
    </div>
    """
  end

end
