%==========================================================================%
% tccUFRB.cls                                                              %
% Copyright (c) 2023 Ícaro Vidal Freire.                                   %
%--------------------------------------------------------------------------%
% Versão     : v1.1.0                                                      %
% Licença    : LPPL 1.3c (LaTeX Project Public License v1.3c) ou superior  %
%              (fica a seu critério).                                      %
%              Para mais informações, acesse:                              %
%                 >>  https://www.latex-project.org/lppl/lppl-1-3c/  <<    %
% Mantenedor : Ícaro Vidal Freire                                          %
% Descrição  : Classe, em LaTeX2e, para confecção de Monografia do curso   %
%              de Licenciatura em Matemática, do Centro de Formação de     %
%              Professores, da Universidade Federal do Recôncavo da Bahia. %
%              - A classe é extra-oficial                                  %
% Como Usar  : A classe foi escrita em LaTeX2e para composição tipográfica %
%              com o mecanismo LuaTeX. Portanto, deve-se usar o LuaLaTeX   %
%              para execução.                                              %
%--------------------------------------------------------------------------%
%                      _         _____   __  __                            %
%                     | |    __ |_   _|__\ \/ /                            %
%                     | |   / _` || |/ _ \\  /                             %
%                     | |__| (_| || |  __//  \                             %
%                     |_____\__,_||_|\___/_/\_\                            %
%==========================================================================%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% informações internas ========================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccUFRB}[2023/03/13 v1.1.0 Modelo de Monografia do CFP/UFRB]

% passando os parâmetros da classe abntex2 ------------------------------------
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% aviso de compilação 
\RequirePackage{iftex}
  \ifPDFTeX
   \PackageError{tccUFRB.cls}{%
     Precisa ser composto com LuaLaTeX}{Use LuaLaTeX}
  \fi

% pacotes essenciais ==========================================================

% fontes & cia
\RequirePackage{euler} %--------------------------------> bela fonte matemática
\RequirePackage{fontspec} %-------------------> codificação e escolha de fontes
\RequirePackage{libertine} %------------> família de fontes (serif, sans, mono)

% indentação
\RequirePackage{indentfirst} %----> indenta o primeiro parágrafo de cada seção

% protução/espaçamento das letras
\RequirePackage{microtype} %-------------> melhora os espaços entre as palavras

% matemática
\usepackage{amsmath, amssymb, amsthm} %--------------> escrita matemática (AMS)
\usepackage{mathtools} %---------------------------------> melhorias no amsmath

% cores
\usepackage{xcolor} %---->-------------------------------- modificação de cores

% figuras e tabelas
\usepackage{graphicx} %----------------------------------> inclusão de gráficos
  \graphicspath{{./figs/}} %-----------------------------> caminho para figuras

% biblioigrafia/referências
\usepackage[style=abnt, justify]{biblatex} %----------------> para bibliografia

% modificações para classe tccUFRB ============================================

% modificando a capa
\renewcommand{\imprimircapa}{%
\begin{capa}
\centering
\includegraphics[scale=0.5]{ufrb} \\
Universidade Federal do Recôncavo da Bahia \\
Centro de Formação de Professores \\
%{Licenciatura em Matemática}
\rule[0.2cm]{1\textwidth}{1pt}

\vspace{\stretch{0.15}}

{\ABNTEXchapterfont\large\imprimirautor}

%\textbf{\large{Fulado de Tal Beltrano}}

%\textsc{\large{E aqui o Subtítulo}}

\vspace{\stretch{0.7}}

%\textbf{\textsc{\Large{Aqui vem o título do trabalho de conclusão de curso}}}\\ 
{\ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo}

\normalsize

\vfill
\imprimirlocal

\imprimirdata
	%{Cidade~-~BA}\\
	%{\the\year}

\end{capa}
}
