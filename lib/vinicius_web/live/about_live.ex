defmodule ViniciusWeb.AboutLive do
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
    <div class="bg-lightblue py-20 px-4">
      <section class="text-gray-600 body-font">
        <div class="container px-5 py-4 mx-auto flex flex-col">
          <div class="lg:w-4/6 mx-auto">
            <div class="flex flex-col sm:flex-row mt-10">
              <div class="sm:w-1/3 text-center sm:pr-8 sm:py-8">
                <div class="w-20 h-20 rounded-full inline-flex items-center justify-center">
                  <img class="w-50 h-50 rounded-full" src="images/niclas_img.jpg"/>
                </div>
                <div class="flex flex-col items-center justify-center">
                  <h2 class="font-medium title-font mt-4 text-gray-900 text-lg">Niclas Frederic Sturm</h2>
                  <div class="w-12 h-1 bg-blue-400 rounded mt-2 mb-4"></div>
                  <p> M.Sc. Business Analytics @ Nova School of Business and Economics <br/> <b> Lisbon </b> </p>
                </div>
              </div>
              <div class="sm:w-2/3 sm:pl-8 sm:py-8 sm:border-l border-gray-200 sm:border-t-0 border-t mt-4 pt-4 sm:mt-0 text-center sm:text-left">
                <p class="leading-relaxed text-lg mb-4"><b>Vinícius</b> é um ferramento desenvolvido como um projeto de tese na Faculdade de Economia da Universidade Nova de Lisboa. A ideia nasceu em contexto dum projeto no <i>Data Science Knowledge Center</i> em 2020/2021. O sistema combina elementos de analise de texto e o aprendizagem automático.</p>
                <a class="text-indigo-500 inline-flex items-center">Sabe mais
                  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
                    <path d="M5 12h14M12 5l7 7-7 7"></path>
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    """
  end

end
