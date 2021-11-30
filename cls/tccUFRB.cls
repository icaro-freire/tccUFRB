\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccUFRB}[2021/11/30 v1.0 Modelo de Monografia do CFP/UFRB]

% passando os parâmetros da classe abntex2 ------------------------------------
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% modificações para classe tccUFRB --------------------------------------------

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