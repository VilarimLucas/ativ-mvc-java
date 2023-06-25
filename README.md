# **Lista de Exercícios - Java com padrão MVC**
Esta lista de exercícios é composta por cinco programas diferentes, todos implementados em Java utilizando o padrão de arquitetura MVC (Model-View-Controller). Cada programa aborda um problema específico e demonstra o uso adequado do padrão MVC para a organização do código.
## **Programa 1: Cálculo do Peso Ideal (IMC)**
Este programa calcula o peso ideal de acordo com a altura e gênero da pessoa, utilizando o Índice de Massa Corporal (IMC) como referência. O objetivo é fornecer uma estimativa do peso considerado saudável com base nos parâmetros informados. O programa consiste nas seguintes partes:
### **Model (Modelo)**
Classe **IMCModel**: Responsável por armazenar os dados relacionados ao cálculo do IMC e realizar as operações necessárias para obter o peso ideal.
### **View (Visão)**
Classe **IMCView**: Apresenta a interface gráfica ao usuário, exibindo os campos para entrada de altura, gênero e o botão de cálculo.
### **Controller (Controlador)**
Classe **IMCController**: Atua como intermediário entre a Model e a View, recebendo os eventos do usuário, realizando a validação dos dados e atualizando a Model com os valores corretos. Também é responsável por notificar a View sobre as alterações e exibir o resultado do cálculo.
## **Programa 2: Cálculo da Área de um Trapézio**
Neste programa, o objetivo é calcular a área de um trapézio com base nos valores dos lados e da altura fornecidos pelo usuário. O programa está dividido da seguinte forma:
### **Model (Modelo)**
Classe **TrapezoidModel**: Armazena os dados relacionados ao trapézio e realiza o cálculo da área com base nas informações fornecidas.
### **View (Visão)**
Classe **TrapezoidView**: Apresenta a interface gráfica para o usuário, exibindo os campos para entrada dos valores dos lados e altura do trapézio, juntamente com o botão de cálculo.
### **Controller (Controlador)**
Classe **TrapezoidController**: Responsável por intermediar a comunicação entre a Model e a View. Recebe os eventos do usuário, valida os dados fornecidos e atualiza a Model com os valores corretos. Também notifica a View sobre as alterações e exibe o resultado do cálculo.
## **Programa 3: Cálculo do Volume de uma Caixa**
Neste programa, o objetivo é calcular o volume de uma caixa com base nas dimensões informadas pelo usuário (comprimento, largura e altura). O programa é estruturado da seguinte maneira:
### **Model (Modelo)**
Classe **BoxModel**: Armazena os dados relacionados à caixa e realiza o cálculo do volume com base nas dimensões fornecidas.
### **View (Visão)**
Classe **BoxView**: Apresenta a interface gráfica para o usuário, exibindo os campos para entrada das dimensões da caixa, juntamente com o botão de cálculo.
### **Controller (Controlador)**
Classe **BoxController**: Atua como intermediário entre a Model e a View. Recebe os eventos do usuário, valida os dados fornecidos e atualiza a Model com os valores corretos. Também notifica a View sobre as alterações e exibe o resultado do cálculo.
## **Programa 4: Cálculo das 4 Operações Básicas**
Este programa implementa as quatro operações básicas da matemática (adição, subtração, multiplicação e divisão). O usuário pode inserir dois números e selecionar a operação desejada, e o programa retornará o resultado correspondente. A estrutura do programa é a seguinte:
### **Model (Modelo)**
Classe **CalculatorModel**: Armazena os dados relacionados aos números e à operação selecionada, e realiza o cálculo correspondente.
### **View (Visão)**
Classe **CalculatorView**: Apresenta a interface gráfica para o usuário, exibindo os campos para entrada dos números, a seleção da operação e o botão de cálculo.
### **Controller (Controlador)**
Classe **CalculatorController**: Responsável por intermediar a comunicação entre a Model e a View. Recebe os eventos do usuário, valida os dados fornecidos e atualiza a Model com os valores corretos. Também notifica a View sobre as alterações e exibe o resultado do cálculo.
## **Programa 5: Biblioteca (Login e Navegação)**
Este programa representa um sistema de biblioteca, que inclui funcionalidades de login e navegação pelo site. O usuário pode fazer login com seu nome de usuário e senha, e após o login bem-sucedido, pode navegar por diferentes seções do site, como livros disponíveis, empréstimos, devoluções, etc. A estrutura do programa é a seguinte:
### **Model (Modelo)**
Classe **UserModel**: Armazena os dados do usuário, como nome de usuário e senha.
### **View (Visão)**
Classe **LoginView**: Apresenta a interface gráfica para o usuário, exibindo os campos para inserir o nome de usuário, senha e o botão de login.

Classe **NavigationView**: Exibe a interface gráfica para a navegação do usuário no site da biblioteca, apresentando os diferentes menus e opções disponíveis.
### **Controller (Controlador)**
Classe **UserController**: Atua como intermediário entre a Model e a View. Recebe os eventos do usuário, valida os dados fornecidos e autentica o usuário. Também gerencia a transição entre as diferentes telas do sistema, mostrando a View correspondente após o login bem-sucedido.
## **Considerações Finais**
Esta lista de exercícios apresenta uma variedade de programas implementados em Java utilizando o padrão MVC. Ao realizar esses exercícios, você terá a oportunidade de praticar a organização do código seguindo as diretrizes do MVC, separando as responsabilidades de Model, View e Controller. Isso contribuirá para uma melhor manutenção e escalabilidade do código, além de facilitar a compreensão e colaboração em projetos de maior porte.
