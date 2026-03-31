### Atividade P1 - Professor Marcelo
Aplicativo básico em Flutter contendo Tela de Splash, Login, Registro e Home.

## João Vitor Zamai - RA 25000783

O protótipo simula uma aplicativo de leitura de e-books.
O usuário é introduzido a uma splash screen, é redirecionado a uma tela de login onde pode inserir seu cadastro ou criar um caso não tenha, após isso é redirecionado para uma tela home.

A classe signup_model (responsável pela criação de conta de usuário) exige que o registro de usuário contenha um email válido, uma senha de no minimo 6 caracteres e um nome de no minimo 3.
O mesmo vale para o login_viewmodel, caso os dados inseridos não sejam válidos, o login não é realizado.

  ## Visualização do APP
  O aplicativo inicia com uma splash page, simulando uma tela de carregamento
  Procede para a tela de login, onde o usuário deve informar seu email e senha, caso não sejam válidos, o login não tem continuidade.
  Caso o usuário não tenha uma conta, ele pode criar clicando no botao de cadastro, que o redireciona para a tela de registro, que pede:
  
    # - Nome;
    # - Email;
    # - Senha (min 6 digitos);
    # - Confirmação de senha.
    
  Caso a conta seja criada com sucesso ou o login seja realizado, o usuário é redirecionado para uma tela home, com uma mensagem de boas vindas.

  ## ----------------------------------------------------------------------

  O design foi criado do zero, sem auxilio de Inteligencia Artificial, junto do código há uma captura de tela do design no figma (protótipo).
  Na entrega do Google Classroom, está anexado um vídeo de demonstração do app funcionando em um dispositivo real.
