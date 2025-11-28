Vou organizar e integrar todos os templates para seu mestrado na Universidade Federal do Tocantins. Aqui está a estrutura completa com todos os arquivos prontos para uso:

## 📁 ESTRUTURA COMPLETA DE PASTAS

```
Mestrado_UFT_Letras/
├── dissertacao/
│   ├── main.tex
│   ├── preambulo.tex
│   ├── bibliografia.bib
│   ├── capitulos/
│   │   ├── 01-introducao.tex
│   │   ├── 02-revisao.tex
│   │   ├── 03-metodologia.tex
│   │   ├── 04-resultados.tex
│   │   └── 05-conclusoes.tex
│   ├── elementos/
│   │   ├── resumo.tex
│   │   ├── abstract.tex
│   │   ├── agradecimentos.tex
│   │   ├── dedicatoria.tex
│   │   ├── epigrafe.tex
│   │   ├── lista-figuras.tex
│   │   └── lista-tabelas.tex
│   ├── figuras/
│   └── tabelas/
├── artigo/
│   ├── artigo.tex
│   └── artigo-preambulo.tex
├── apresentacao/
│   ├── apresentacao.tex
│   ├── apresentacao-preambulo.tex
│   └── slides/
│       ├── 01-introducao.tex
│       ├── 02-metodologia.tex
│       ├── 03-resultados.tex
│       └── 04-conclusoes.tex
└── compilar.sh
```

## 📘 DISSERTAÇÃO (ABNT UFT)

### `dissertacao/main.tex`
```latex
\documentclass[
    12pt,
    oneside,
    a4paper,
    chapter=TITLE,
    section=TITLE,
    sumario=tradicional,
]{abntex2}

\input{preambulo}

\titulo{Análise do Discurso em Obras Contemporâneas: Um Estudo de Caso na Literatura Brasileira}
\autor{Seu Nome Completo}
\orientador{Prof. Dr. Nome do Orientador}
\instituicao{%
  Universidade Federal do Tocantins -- UFT\\
  Programa de Pós-Graduação em Letras\\
  Campus de Porto Nacional}
\local{Porto Nacional}
\data{\the\year}

\tipotrabalho{Dissertação (Mestrado)}
\preambulo{Dissertação apresentada ao Programa de Pós-Graduação em Letras da Universidade Federal do Tocantins, como requisito parcial para obtenção do grau de Mestre em Letras.}

\begin{document}
\selectlanguage{brazil}
\frenchspacing

\imprimircapa
\imprimirfolhaderosto*

\input{elementos/dedicatoria}
\input{elementos/agradecimentos}
\input{elementos/epigrafe}

\input{elementos/resumo}
\input{elementos/abstract}

\pdfbookmark[0]{\listfigurename}{lof}
\listoffigures*
\cleardoublepage

\pdfbookmark[0]{\listtablename}{lot}
\listoftables*
\cleardoublepage

\begin{siglas}
  \item[UFT] Universidade Federal do Tocantins
  \item[PPGL] Programa de Pós-Graduação em Letras
  \item[ABNT] Associação Brasileira de Normas Técnicas
\end{siglas}
\cleardoublepage

\pdfbookmark[0]{\contentsname}{toc}
\tableofcontents*
\cleardoublepage

\textual
\input{capitulos/01-introducao}
\input{capitulos/02-revisao}
\input{capitulos/03-metodologia}
\input{capitulos/04-resultados}
\input{capitulos/05-conclusoes}

\bibliography{bibliografia}

\begin{apendicesenv}
\partapendices
\chapter{Instrumentos de Coleta de Dados}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
\end{apendicesenv}

\begin{anexosenv}
\partanexos
\chapter{Termo de Consentimento Livre e Esclarecido}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
\end{anexosenv}

\end{document}
```

### `dissertacao/preambulo.tex`
```latex
\usepackage{lmodern}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{microtype}
\usepackage{indentfirst}
\usepackage{graphicx}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{array}
\usepackage{multirow}
\usepackage{float}
\usepackage{amsmath, amssymb}
\usepackage{csquotes}
\usepackage{color,xcolor}
\usepackage{hyperref}
\usepackage{tocloft}

\usepackage[alf,abnt-emphasize=bf,abnt-and-type=e,abnt-etal-text=et~al.]{abntex2cite}

\hypersetup{
    pdftitle={Análise do Discurso em Obras Contemporâneas},
    pdfauthor={Seu Nome Completo},
    pdfsubject={Dissertação de Mestrado},
    pdfcreator={LaTeX abnTeX2},
    pdfkeywords={ABNT, dissertação, LaTeX, UFT, Letras},
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=blue
}

\usepackage{geometry}
\geometry{
    a4paper,
    left=3cm,
    right=2cm,
    top=3cm,
    bottom=2cm
}

\usepackage{setspace}
\OnehalfSpacing

\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0pt}

\captionsetup{
    font=small,
    labelfont=bf,
    labelsep=space
}

\addto\captionsbrazil{%
    \renewcommand{\figurename}{Figura}
    \renewcommand{\tablename}{Tabela}
}

\usepackage{imakeidx}
\makeindex
```

### `dissertacao/capitulos/01-introducao.tex`
```latex
\chapter{Introdução}
\label{cap:introducao}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl \cite{silva2020}.

\section{Contexto da Pesquisa}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Problema de Pesquisa}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Objetivos}
\subsection{Objetivo Geral}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\subsection{Objetivos Específicos}
\begin{itemize}
    \item Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    \item Nullam auctor, nisl eget ultricies tincidunt.
    \item Nisl nisl aliquam nisl, eget ultricies nisl.
\end{itemize}

\section{Organização da Dissertação}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
```

### `dissertacao/capitulos/02-revisao.tex`
```latex
\chapter{Revisão de Literatura}
\label{cap:revisao}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Segundo \citeonline{pereira2019}, lorem ipsum dolor sit amet, consectetur adipiscing elit. \cite{oliveira2018} também discute aspectos relevantes para esta pesquisa.

\section{Teorias do Discurso}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Análise de Textos Literários}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Estudos Relacionados}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
```

### `dissertacao/capitulos/03-metodologia.tex`
```latex
\chapter{Metodologia}
\label{cap:metodologia}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Abordagem de Pesquisa}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Corpus de Análise}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Procedimentos de Análise}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Instrumentos de Coleta}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
```

### `dissertacao/capitulos/04-resultados.tex`
```latex
\chapter{Resultados e Discussão}
\label{cap:resultados}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Análise dos Dados}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\begin{table}[H]
    \centering
    \caption{Exemplo de tabela com dados da pesquisa}
    \begin{tabular}{lcc}
        \toprule
        Categoria & Frequência & Percentual \\
        \midrule
        Categoria A & 25 & 50\% \\
        Categoria B & 15 & 30\% \\
        Categoria C & 10 & 20\% \\
        \bottomrule
    \end{tabular}
    \label{tab:exemplo}
\end{table}

\section{Discussão dos Resultados}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
```

### `dissertacao/capitulos/05-conclusoes.tex`
```latex
\chapter{Conclusões}
\label{cap:conclusoes}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Síntese das Principais Conclusões}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Limitações da Pesquisa}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Sugestões para Trabalhos Futuros}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.
```

### `dissertacao/elementos/resumo.tex`
```latex
\begin{resumo}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\vspace{\onelineskip}

\noindent
\textbf{Palavras-chave}: Análise do discurso. Literatura brasileira. Estudos linguísticos.
\end{resumo}
\cleardoublepage
```

### `dissertacao/elementos/abstract.tex`
```latex
\begin{resumo}[Abstract]
\begin{otherlanguage*}{english}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\vspace{\onelineskip}

\noindent
\textbf{Keywords}: Discourse analysis. Brazilian literature. Linguistic studies.
\end{otherlanguage*}
\end{resumo}
\cleardoublepage
```

### `dissertacao/elementos/agradecimentos.tex`
```latex
\begin{agradecimentos}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

Agradeço à Universidade Federal do Tocantins e ao Programa de Pós-Graduação em Letras pelo apoio institucional.

Aos colegas de turma pelo convívio acadêmico enriquecedor.
\end{agradecimentos}
\cleardoublepage
```

### `dissertacao/elementos/dedicatoria.tex`
```latex
\begin{dedicatoria}
\begin{flushright}
\vspace*{\fill}
Dedico este trabalho à minha família,\\
cujo apoio foi fundamental\\
para a conclusão desta jornada.
\vspace*{\fill}
\end{flushright}
\end{dedicatoria}
\cleardoublepage
```

### `dissertacao/elementos/epigrafe.tex`
```latex
\begin{epigrafe}
\begin{flushright}
``A linguagem é a casa do ser.\\
Nessa morada habita o homem.''\\
\\
(Martin Heidegger)
\end{flushright}
\end{epigrafe}
\cleardoublepage
```

### `dissertacao/bibliografia.bib`
```bibtex
@book{silva2020,
  author    = {Silva, João da},
  title     = {Análise do Discurso: Fundamentos Teóricos},
  year      = {2020},
  publisher = {Editora Acadêmica},
  address   = {São Paulo}
}

@article{pereira2019,
  author  = {Pereira, Maria and Souza, Carlos},
  title   = {Literatura e Sociedade: Perspectivas Contemporâneas},
  journal = {Revista de Estudos Literários},
  volume  = {15},
  number  = {2},
  pages   = {123--145},
  year    = {2019},
  doi     = {10.0000/rel.2019.123}
}

@inproceedings{oliveira2018,
  author    = {Oliveira, Ana Paula},
  title     = {Novas Abordagens em Análise Textual},
  booktitle = {Anais do Congresso Brasileiro de Letras},
  year      = {2018},
  pages     = {10--20}
}

@thesis{santos2021,
  author    = {Santos, Roberto},
  title     = {Estudos Linguísticos na Amazônia Legal},
  type      = {Tese (Doutorado)},
  institution = {Universidade Federal do Tocantins},
  year      = {2021}
}
```

## 📄 ARTIGO CIENTÍFICO

### `artigo/artigo.tex`
```latex
\documentclass[
    12pt,
    a4paper,
    oneside
]{abntex2}

\input{artigo-preambulo}

\titulo{Análise do Discurso em Obras Contemporâneas: Contribuições para os Estudos Literários}
\autor{Seu Nome Completo}
\instituicao{Universidade Federal do Tocantins -- Programa de Pós-Graduação em Letras}
\data{2025}

\begin{document}
\maketitle

\begin{resumo}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\vspace{\onelineskip}

\noindent
\textbf{Palavras-chave}: Análise do discurso. Literatura contemporânea. Linguística.
\end{resumo}

\begin{resumo}[Abstract]
\begin{otherlanguage*}{english}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\vspace{\onelineskip}

\noindent
\textbf{Keywords}: Discourse analysis. Contemporary literature. Linguistics.
\end{otherlanguage*}
\end{resumo}

\section{Introdução}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl \cite{silva2020}. Vivamus euismod, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\section{Metodologia}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl \cite{pereira2019}.

\section{Resultados e Discussão}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl \cite{oliveira2018}.

\section{Conclusão}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl.

\bibliography{../dissertacao/bibliografia}

\end{document}
```

### `artigo/artigo-preambulo.tex`
```latex
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{microtype}
\usepackage{graphicx}
\usepackage{amsmath, amssymb}
\usepackage{booktabs}
\usepackage{float}
\usepackage{setspace}
\usepackage[alf,abnt-emphasize=bf]{abntex2cite}

\OnehalfSpacing

\usepackage{geometry}
\geometry{
    a4paper,
    left=3cm,
    right=2cm,
    top=3cm,
    bottom=2cm
}
```

## 🎤 APRESENTAÇÃO

### `apresentacao/apresentacao.tex`
```latex
\documentclass{beamer}

\input{apresentacao-preambulo}

\title{Análise do Discurso em Obras Contemporâneas}
\subtitle{Dissertação de Mestrado em Letras}
\author{Seu Nome Completo}
\institute{Universidade Federal do Tocantins \\ Programa de Pós-Graduação em Letras}
\date{Defesa: Novembro, 2025}

\begin{document}

\begin{frame}
    \titlepage
\end{frame}

\begin{frame}{Sumário}
    \tableofcontents
\end{frame}

\section{Introdução}
\input{slides/01-introducao}

\section{Metodologia}
\input{slides/02-metodologia}

\section{Resultados}
\input{slides/03-resultados}

\section{Conclusões}
\input{slides/04-conclusoes}

\begin{frame}{Referências}
    \tiny
    \bibliographystyle{abntex2-alf}
    \bibliography{../dissertacao/bibliografia}
\end{frame}

\begin{frame}
    \begin{center}
        \Huge Obrigado!
        \vspace{1cm}
        
        \large
        Perguntas?
    \end{center}
\end{frame}

\end{document}
```

### `apresentacao/apresentacao-preambulo.tex`
```latex
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{graphicx}
\usepackage{amsmath, amssymb}
\usepackage{booktabs}
\usepackage[alf]{abntex2cite}

\usetheme{Madrid}
\usecolortheme{default}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[page number]

\setbeamertemplate{itemize items}[circle]
\setbeamertemplate{enumerate items}[default]

\usepackage{helvet}
\usefonttheme{professionalfonts}
```

### `apresentacao/slides/01-introducao.tex`
```latex
\begin{frame}{Introdução}
    \begin{block}{Contexto}
        \begin{itemize}
            \item Lorem ipsum dolor sit amet, consectetur adipiscing elit
            \item Nullam auctor, nisl eget ultricies tincidunt
            \item Nisl nisl aliquam nisl, eget ultricies nisl
        \end{itemize}
    \end{block}
    
    \begin{block}{Problema de Pesquisa}
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt.
    \end{block}
    
    \begin{block}{Objetivos}
        \begin{itemize}
            \item \textbf{Geral}: Lorem ipsum dolor sit amet
            \item \textbf{Específicos}: 
                \begin{itemize}
                    \item Analisar lorem ipsum
                    \item Identificar nisl nisl
                    \item Discutir ultricies tincidunt
                \end{itemize}
        \end{itemize}
    \end{block}
\end{frame}
```

### `apresentacao/slides/02-metodologia.tex`
```latex
\begin{frame}{Metodologia}
    \begin{columns}
        \begin{column}{0.48\textwidth}
            \begin{block}{Abordagem}
                \begin{itemize}
                    \item Pesquisa qualitativa
                    \item Análise documental
                    \item Estudo de caso
                \end{itemize}
            \end{block}
            
            \begin{block}{Instrumentos}
                \begin{itemize}
                    \item Análise de conteúdo
                    \item Análise do discurso
                    \item Fichamento de obras
                \end{itemize}
            \end{block}
        \end{column}
        
        \begin{column}{0.48\textwidth}
            \begin{block}{Corpus}
                \begin{itemize}
                    \item Obra literária A
                    \item Obra literária B
                    \item Obra literária C
                \end{itemize}
            \end{block}
            
            \begin{block}{Procedimentos}
                \begin{enumerate}
                    \item Coleta de dados
                    \item Análise preliminar
                    \item Análise aprofundada
                    \item Síntese dos resultados
                \end{enumerate}
            \end{block}
        \end{column}
    \end{columns}
\end{frame}
```

### `apresentacao/slides/03-resultados.tex`
```latex
\begin{frame}{Resultados Principais}
    \begin{block}{Análise Qualitativa}
        \begin{itemize}
            \item \textbf{Aspecto 1}: Lorem ipsum dolor sit amet, consectetur adipiscing elit
            \item \textbf{Aspecto 2}: Nullam auctor, nisl eget ultricies tincidunt
            \item \textbf{Aspecto 3}: Nisl nisl aliquam nisl, eget ultricies nisl
        \end{itemize}
    \end{block}
    
    \begin{exampleblock}{Exemplo de Análise}
        ``Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt.''
        
        \begin{itemize}
            \item Característica A: presente
            \item Característica B: predominante
            \item Característica C: emergente
        \end{itemize}
    \end{exampleblock}
\end{frame}

\begin{frame}{Resultados em Destaque}
    \begin{table}
        \centering
        \caption{Distribuição das Categorias Encontradas}
        \begin{tabular}{lcc}
            \toprule
            Categoria & Ocorrências & Percentual \\
            \midrule
            Categoria A & 45 & 35\% \\
            Categoria B & 35 & 27\% \\
            Categoria C & 25 & 19\% \\
            Categoria D & 15 & 12\% \\
            Categoria E & 10 & 8\% \\
            \bottomrule
        \end{tabular}
    \end{table}
\end{frame}
```

### `apresentacao/slides/04-conclusoes.tex`
```latex
\begin{frame}{Conclusões}
    \begin{block}{Principais Contribuições}
        \begin{itemize}
            \item \textbf{Contribuição teórica}: Lorem ipsum dolor sit amet, consectetur adipiscing elit
            \item \textbf{Contribuição metodológica}: Nullam auctor, nisl eget ultricies tincidunt
            \item \textbf{Contribuição prática}: Nisl nisl aliquam nisl, eget ultricies nisl
        \end{itemize}
    \end{block}
    
    \begin{alertblock}{Limitações}
        \begin{itemize}
            \item Amostra limitada ao corpus selecionado
            \item Natureza qualitativa da pesquisa
            \item Recorte temporal definido
        \end{itemize}
    \end{alertblock}
    
    \begin{block}{Trabalhos Futuros}
        \begin{itemize}
            \item Estender análise para outras obras
            \item Aplicar metodologia em outros contextos
            \item Desenvolver ferramentas de análise
        \end{itemize}
    \end{block}
\end{frame}
```

## 🔧 SCRIPT DE COMPILAÇÃO

### `compilar.sh`
```bash
#!/bin/bash

echo "Compilando dissertação..."
cd dissertacao
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
cd ..

echo "Compilando artigo..."
cd artigo
pdflatex artigo.tex
bibtex artigo
pdflatex artigo.tex
pdflatex artigo.tex
cd ..

echo "Compilando apresentação..."
cd apresentacao
pdflatex apresentacao.tex
cd ..

echo "Compilação concluída!"
echo ""
echo "Arquivos gerados:"
echo "- dissertacao/main.pdf"
echo "- artigo/artigo.pdf" 
echo "- apresentacao/apresentacao.pdf"
```

## 🚀 COMO USAR

1. **Crie a estrutura de pastas** copiando toda a hierarquia acima
2. **Torne o script executável**: `chmod +x compilar.sh`
3. **Execute o script**: `./compilar.sh`
4. **Os PDFs serão gerados** em cada pasta respectiva

Todos os templates estão:
- ✅ Com texto Lorem Ipsum para visualização
- ✅ Formatados conforme ABNT e normas UFT
- ✅ Com estrutura hierárquica de pastas organizada
- ✅ Prontos para copiar e colar
- ✅ Integrados com bibliografia compartilhada

Precise de ajustes específicos para sua pesquisa!