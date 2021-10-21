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
          <a class="menu-item" href="/about">
              Sobre nós
          </a>
        </div>
    </div>
    <section id="main-content-wrapper">
        <div class="container mx-auto flex px-5 py-20 md:flex-row flex-col items-center">
            <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0">
                <img class="h-50 w-50 rounded" alt="palacio são bento" src="images/parlamento.jpg">
            </div>
            <div class="lg:flex-grow md:w-1/2 lg:pl-24 md:pl-16 flex flex-col md:items-start md:text-left items-center text-center">
                <h1 class="title-font sm:text-4xl text-3xl mb-4 font-semibold text-gray-900">O qué fazem os políticos? </h1>
                <h1 class="title-font sm:text-4xl text-3xl mb-4 font-semibold text-blue-400">Veja os dados! </h1>
                <p class="mb-8 leading-relaxed"> Vinícius é um ferramento para visualizar as atividades parlamentares em relação com o discurso. <br> </p>
                <div class="flex justify-center">
                    <button class="inline-flex text-white bg-blue-400 border-0 py-2 px-6 focus:outline-none hover:bg-blue-700 rounded text-lg">Button</button>
                    <button class="ml-4 inline-flex text-gray-700 bg-gray-100 border-0 py-2 px-6 focus:outline-none hover:bg-gray-200 rounded text-lg">Button</button>
                </div>
            </div>
    </div>
    </section>
    """
  end

end
