\# Arquivos base em LaTeX para dissertação segundo ABNT (abnTeX2)



Abaixo estão os arquivos essenciais para você iniciar uma dissertação conforme as normas ABNT usando a classe abnTeX2. Incluo estrutura de pastas, preâmbulo com pacotes e configurações típicas (margens, fonte, citações autor-data, capítulos, elementos pré-textuais, pós-textuais) e um exemplo de bibliografia com BibTeX.



---



\## Estrutura de pastas


```

\- raiz/

&nbsp; - main.tex

&nbsp; - preambulo.tex

&nbsp; - bibliografia.bib

&nbsp; - capitulos/

&nbsp;   - 01-introducao.tex

&nbsp;   - 02-revisao.tex

&nbsp;   - 03-metodologia.tex

&nbsp;   - 04-resultados.tex

&nbsp;   - 05-conclusoes.tex

&nbsp; - elementos/

&nbsp;   - resumo.tex

&nbsp;   - abstract.tex

&nbsp;   - agradecimentos.tex

&nbsp;   - dedicatória.tex

&nbsp;   - epigrafe.tex

&nbsp;   - lista-figuras.tex

&nbsp;   - lista-tabelas.tex

&nbsp; - figuras/

&nbsp; - tabelas/

```

---



\## Arquivo principal



```tex

% main.tex

\\documentclass\[

&nbsp; 12pt,                % Tamanho da fonte

&nbsp; oneside,             % Impressão em frente única (troque para 'twoside' se necessário)

&nbsp; a4paper,             % Tamanho do papel

&nbsp; chapter=TITLE,       % Capítulos com título em maiúsculas

&nbsp; section=TITLE,       % Seções com título em maiúsculas

&nbsp; sumario=tradicional, % Sumário tradicional

]{abntex2}



% Arquivo de preâmbulo com pacotes e configurações

\\input{preambulo}



% Informações principais

\\titulo{Título da Dissertação}

\\autor{Seu Nome Completo}

\\orientador{Prof. Dr. Nome do Orientador}

% \\coorientador{Prof. Dr. Nome do Coorientador}

\\instituicao{%

&nbsp; Universidade X\\\\

&nbsp; Programa de Pós-Graduação em Y\\\\

&nbsp; Cidade -- TO

}

\\local{Palmas}

\\data{2025}



% Opcional: tipo de trabalho e nota

\\tipotrabalho{Dissertação (Mestrado)}

% \\preambulo{Dissertação apresentada ao Programa de Pós-Graduação em Y, Universidade X, como requisito parcial para obtenção do grau de Mestre em Y.}



% Início do documento

\\begin{document}

\\selectlanguage{brazil}

\\frenchspacing  % Retira espaço extra após pontuação



% Capa e folha de rosto

\\imprimircapa

\\imprimirfolhaderosto\*  % usa ficha catalográfica fictícia



% Elementos pré-textuais

\\input{elementos/dedicação}      % opcional

\\input{elementos/agradecimentos} % opcional

\\input{elementos/epigrafe}       % opcional



\\input{elementos/resumo}

\\input{elementos/abstract}



% Listas (figuras, tabelas, siglas, símbolos)

\\pdfbookmark\[0]{\\listfigurename}{lof}

\\listoffigures\*

\\cleardoublepage



\\pdfbookmark\[0]{\\listtablename}{lot}

\\listoftables\*

\\cleardoublepage



% Lista de abreviaturas e siglas (exemplo)

\\begin{siglas}

&nbsp; \\item\[ABNT] Associação Brasileira de Normas Técnicas

&nbsp; \\item\[PPG] Programa de Pós-Graduação

\\end{siglas}

\\cleardoublepage



% Sumário

\\pdfbookmark\[0]{\\contentsname}{toc}

\\tableofcontents\*

\\cleardoublepage



% Elementos textuais (capítulos)

\\input{capitulos/01-introducao}

\\input{capitulos/02-revisao}

\\input{capitulos/03-metodologia}

\\input{capitulos/04-resultados}

\\input{capitulos/05-conclusoes}



% Elementos pós-textuais

\\bookmarksetup{startatroot}

\\bibliography{bibliografia}   % usa abntex2cite + BibTeX



% Apêndices (se houver)

\\begin{apendicesenv}

\\partapendices

\\chapter{Título do Apêndice}

Conteúdo de apêndice.

\\end{apendicesenv}



% Anexos (se houver)

\\begin{anexosenv}

\\partanexos

\\chapter{Título do Anexo}

Conteúdo de anexo.

\\end{anexosenv}



\\printindex   % se usar índice remissivo



\\end{document}

```



---



\## Preâmbulo com pacotes e ajustes



```tex

% preambulo.tex

% Pacotes fundamentais

\\usepackage{lmodern}            % Fonte Latin Modern

\\usepackage\[T1]{fontenc}

\\usepackage\[utf8]{inputenc}

\\usepackage{microtype}          % Melhora justificação

\\usepackage{indentfirst}        % Indenta primeiro parágrafo

\\usepackage{graphicx}           % Figuras

\\usepackage{caption}

\\usepackage{subcaption}

\\usepackage{booktabs}           % Tabelas

\\usepackage{longtable}

\\usepackage{array}

\\usepackage{multirow}

\\usepackage{float}

\\usepackage{amsmath, amssymb}   % Matemática

\\usepackage{csquotes}           % Aspas tipográficas

\\usepackage{color,xcolor}       % Cores

\\usepackage{hyperref}           % Links

\\usepackage{tocloft}            % Ajustes finos em sumário



% Citações ABNT autor-data

\\usepackage\[alf,abnt-emphasize=bf,abnt-and-type=e,abnt-etal-text=et~al.]{abntex2cite}



% Configurações de hiperlinks

\\hypersetup{

&nbsp; pdftitle={Título da Dissertação},

&nbsp; pdfauthor={Seu Nome Completo},

&nbsp; pdfsubject={Dissertação de Mestrado},

&nbsp; pdfcreator={LaTeX abnTeX2},

&nbsp; pdfkeywords={ABNT, dissertação, LaTeX, abnTeX2},

&nbsp; colorlinks=true,

&nbsp; linkcolor=black,

&nbsp; citecolor=black,

&nbsp; urlcolor=blue

}



% Margens conforme ABNT (NBR 14724): sup/left 3 cm; inf/right 2 cm

\\usepackage{geometry}

\\geometry{

&nbsp; a4paper,

&nbsp; left=3cm,

&nbsp; right=2cm,

&nbsp; top=3cm,

&nbsp; bottom=2cm

}



% Espaçamento: 1,5 no corpo do texto; simples em citações longas e notas

\\usepackage{setspace}

\\OnehalfSpacing



% Parágrafo e recuo

\\setlength{\\parindent}{1.25cm}

\\setlength{\\parskip}{0pt}



% Numeração de capítulos e seções em maiúsculas já no class options (chapter=TITLE, section=TITLE)



% Formatação de legendas

\\captionsetup{

&nbsp; font=small,

&nbsp; labelfont=bf,

&nbsp; labelsep=space

}



% Estilo da referência de figura/tabela: "Figura 1 — Título"

\\addto\\captionsbrazil{%

&nbsp; \\renewcommand{\\figurename}{Figura}

&nbsp; \\renewcommand{\\tablename}{Tabela}

}



% Arquivo de índice remissivo (opcional)

\\usepackage{imakeidx}

\\makeindex

```



---



\## Capítulos de exemplo



```tex

% capitulos/01-introducao.tex

\\chapter{Introdução}

\\label{cap:introducao}



Este capítulo apresenta o contexto, problema de pesquisa, objetivos e organização do trabalho. A norma ABNT recomenda linguagem formal, clareza e coerência. As citações autor-data podem ser feitas com \\cite{silva2020}, ou citações diretas longas em bloco.



\\section{Contexto}

Texto introdutório.



\\section{Objetivos}

\\subsection{Objetivo geral}

Descrever o objetivo geral.



\\subsection{Objetivos específicos}

Listar objetivos específicos.



\\section{Organização da dissertação}

Breve descrição dos capítulos.



```



```tex

% capitulos/02-revisao.tex

\\chapter{Revisão de Literatura}

\\label{cap:revisao}



Apresente o estado da arte, conceitos-chave e trabalhos relacionados, com discussão crítica. Use \\citeonline{pereira2019} para referência autor no texto e \\cite{oliveira2018} para citação parentética.



\\section{Conceitos fundamentais}

Definições e fundamentos.



\\section{Trabalhos relacionados}

Discussão dos principais estudos.



```



```tex

% capitulos/03-metodologia.tex

\\chapter{Metodologia}

\\label{cap:metodologia}



Descreva desenho da pesquisa, métodos, instrumentos e procedimentos, assegurando reprodutibilidade.



\\section{Desenho de pesquisa}

\\section{Procedimentos}

\\section{Análise de dados}



```



```tex

% capitulos/04-resultados.tex

\\chapter{Resultados e Discussão}

\\label{cap:resultados}



Apresente resultados, figuras e tabelas, interpretando-os à luz da literatura.



\\section{Resultados}

\\begin{figure}\[H]

&nbsp; \\centering

&nbsp; \\includegraphics\[width=.7\\textwidth]{figuras/exemplo-figura}

&nbsp; \\caption{Exemplo de figura com legenda conforme ABNT.}

&nbsp; \\label{fig:exemplo}

\\end{figure}



\\section{Discussão}

Relação entre resultados e hipóteses.



```



```tex

% capitulos/05-conclusoes.tex

\\chapter{Conclusões}

\\label{cap:conclusoes}



Retome os objetivos, sintetize contribuições, limitações e propostas de trabalhos futuros.



```



---



\## Elementos pré-textuais



```tex

% elementos/resumo.tex

\\begin{resumo}

Texto do resumo em português com cerca de 150–250 palavras, objetivos, métodos, resultados e conclusões. Inclua palavras-chave separadas por ponto.

\\vspace{\\onelineskip}



\\noindent

\\textbf{Palavras-chave}: Palavra 1. Palavra 2. Palavra 3.

\\end{resumo}

\\cleardoublepage

```



```tex

% elementos/abstract.tex

\\begin{resumo}\[Abstract]

\\begin{otherlanguage\*}{english}

English abstract text, 150–250 words, objectives, methods, results, and conclusions.

\\vspace{\\onelineskip}



\\noindent

\\textbf{Keywords}: Keyword 1. Keyword 2. Keyword 3.

\\end{otherlanguage\*}

\\end{resumo}

\\cleardoublepage

```



```tex

% elementos/agradecimentos.tex

\\begin{agradecimentos}

Texto de agradecimentos, em parágrafos curtos e objetivos.

\\end{agradecimentos}

\\cleardoublepage

```



```tex

% elementos/dedicação.tex

\\begin{dedicatoria}

\\begin{flushright}

\\vspace\*{\\fill}

Dedicatória opcional.

\\vspace\*{\\fill}

\\end{flushright}

\\end{dedicatoria}

\\cleardoublepage

```



```tex

% elementos/epigrafe.tex

\\begin{epigrafe}

\\begin{flushright}

``Citação inspiradora.''\\\\

Autor

\\end{flushright}

\\end{epigrafe}

\\cleardoublepage

```



---



\## Bibliografia (BibTeX)



```bibtex

% bibliografia.bib

@book{silva2020,

&nbsp; author    = {Silva, João},

&nbsp; title     = {Título do Livro},

&nbsp; year      = {2020},

&nbsp; publisher = {Editora Exemplo},

&nbsp; address   = {São Paulo}

}



@article{pereira2019,

&nbsp; author  = {Pereira, Maria and Souza, Carlos},

&nbsp; title   = {Artigo de revisão},

&nbsp; journal = {Revista ABC},

&nbsp; volume  = {15},

&nbsp; number  = {2},

&nbsp; pages   = {123--145},

&nbsp; year    = {2019},

&nbsp; doi     = {10.0000/abc.2019.123}

}



@inproceedings{oliveira2018,

&nbsp; author    = {Oliveira, Ana},

&nbsp; title     = {Trabalho em conferência},

&nbsp; booktitle = {Anais da Conferência XYZ},

&nbsp; year      = {2018},

&nbsp; pages     = {10--20}

}

```



Para citar:

\- Autor no texto: `\\citeonline{silva2020}`

\- Citação parentética: `\\cite{pereira2019}`

\- Várias fontes: `\\cite{silva2020, pereira2019, oliveira2018}`



---



\## Como compilar



\- Recomendado: XeLaTeX ou pdfLaTeX. O abnTeX2 funciona bem com pdfLaTeX.

\- Sequência típica:

&nbsp; 1. pdflatex main.tex

&nbsp; 2. bibtex main

&nbsp; 3. pdflatex main.tex

&nbsp; 4. pdflatex main.tex



Opcionalmente, crie um Makefile simples:



```make

\# Makefile

all:

&nbsp;	pdflatex main.tex

&nbsp;	bibtex main

&nbsp;	pdflatex main.tex

&nbsp;	pdflatex main.tex



clean:

&nbsp;	rm -f \*.aux \*.bbl \*.blg \*.log \*.out \*.toc \*.lof \*.lot \*.idx \*.ilg \*.ind

```



---



\## Observações importantes



\- Algumas instituições têm modelos próprios baseados em abnTeX2 (margens, capa, folha de aprovação, ficha catalográfica). Se sua universidade tiver um template oficial, vale usar como base e adaptar estes arquivos.

\- Ajuste `oneside` para `twoside` se for exigida diagramação frente e verso.

\- Para folha de aprovação e ficha catalográfica oficiais, substitua `\\imprimirfolhaderosto\*` por arquivos específicos ou ambientes do abnTeX2 conforme instruções da biblioteca da sua instituição.

\- Se precisar de numeração de seções sem maiúsculas, remova `chapter=TITLE, section=TITLE` nas opções da classe.



---



Quer que eu personalize esse template com o nome da sua universidade, programa e orientador, ou adicionar folha de aprovação conforme o seu modelo institucional?











































































========================================================================================================================================================================================================================================================

PARTE DOIS



Perfeito, Naygno! Vamos expandir a estrutura que já criamos para a dissertação em LaTeX, adicionando \*\*arquivos base para apresentações (slides)\*\* e \*\*artigos científicos\*\*, ambos seguindo as normas da ABNT via \*\*abnTeX2\*\*. Assim você terá um conjunto completo: dissertação, artigo e apresentação, todos integrados na mesma árvore de pastas.



---



\## 📂 Estrutura de pastas atualizada



```

raiz/

&nbsp; main.tex              % dissertação

&nbsp; preambulo.tex

&nbsp; bibliografia.bib

&nbsp; capitulos/

&nbsp;   01-introducao.tex

&nbsp;   ...

&nbsp; elementos/

&nbsp;   resumo.tex

&nbsp;   abstract.tex

&nbsp;   ...

&nbsp; figuras/

&nbsp; tabelas/

&nbsp; artigos/

&nbsp;   artigo.tex

&nbsp;   artigo-preambulo.tex

&nbsp; apresentacao/

&nbsp;   apresentacao.tex

&nbsp;   apresentacao-preambulo.tex

&nbsp;   slides/

&nbsp;     01-introducao.tex

&nbsp;     02-metodologia.tex

&nbsp;     03-resultados.tex

&nbsp;     04-conclusoes.tex

```



---



\## 📑 Arquivo base para \*\*artigo científico (ABNT)\*\*



```tex

% artigos/artigo.tex

\\documentclass\[

&nbsp; 12pt,

&nbsp; a4paper,

&nbsp; oneside

]{abntex2}



\\input{artigos/artigo-preambulo}



\\titulo{Título do Artigo}

\\autor{Seu Nome Completo}

\\instituicao{Universidade X -- Programa de Pós-Graduação em Y}

\\data{2025}



\\begin{document}

\\maketitle



\\begin{resumo}

Resumo do artigo em português (150–250 palavras).

\\vspace{\\onelineskip}

\\noindent\\textbf{Palavras-chave}: Palavra 1. Palavra 2. Palavra 3.

\\end{resumo}



\\begin{resumo}\[Abstract]

\\begin{otherlanguage\*}{english}

English abstract (150–250 words).

\\vspace{\\onelineskip}

\\noindent\\textbf{Keywords}: Keyword 1. Keyword 2. Keyword 3.

\\end{otherlanguage\*}

\\end{resumo}



\\section{Introdução}

Texto introdutório.



\\section{Metodologia}

Descrição dos métodos.



\\section{Resultados}

Apresentação e discussão dos resultados.



\\section{Conclusão}

Síntese e perspectivas futuras.



\\bibliography{../bibliografia}



\\end{document}

```



```tex

% artigos/artigo-preambulo.tex

\\usepackage\[T1]{fontenc}

\\usepackage\[utf8]{inputenc}

\\usepackage{lmodern}

\\usepackage{microtype}

\\usepackage{graphicx}

\\usepackage{amsmath, amssymb}

\\usepackage{booktabs}

\\usepackage{float}

\\usepackage{setspace}

\\usepackage{abntex2cite} % citações ABNT autor-data



\\OnehalfSpacing

```



---



\## 🎤 Arquivo base para \*\*apresentação (slides ABNT)\*\*



Para apresentações, usamos \*\*beamer\*\* junto com estilo ABNT (há pacotes que adaptam normas, mas o mais comum é usar beamer com referências ABNT via `abntex2cite`).



```tex

% apresentacao/apresentacao.tex

\\documentclass{beamer}



\\input{apresentacao/apresentacao-preambulo}



\\title{Título da Apresentação}

\\author{Seu Nome Completo}

\\institute{Universidade X -- Programa de Pós-Graduação em Y}

\\date{Novembro, 2025}



\\begin{document}



\\begin{frame}

&nbsp; \\titlepage

\\end{frame}



\\begin{frame}{Sumário}

&nbsp; \\tableofcontents

\\end{frame}



\\section{Introdução}

\\input{apresentacao/slides/01-introducao}



\\section{Metodologia}

\\input{apresentacao/slides/02-metodologia}



\\section{Resultados}

\\input{apresentacao/slides/03-resultados}



\\section{Conclusões}

\\input{apresentacao/slides/04-conclusoes}



\\end{document}

```



```tex

% apresentacao/apresentacao-preambulo.tex

\\usepackage\[T1]{fontenc}

\\usepackage\[utf8]{inputenc}

\\usepackage{lmodern}

\\usepackage{graphicx}

\\usepackage{amsmath, amssymb}

\\usepackage{booktabs}

\\usepackage{abntex2cite} % citações ABNT nos slides



% Tema beamer (exemplo)

\\usetheme{Madrid}

\\usecolortheme{default}

```



---



\## 📊 Exemplos de slides



```tex

% apresentacao/slides/01-introducao.tex

\\begin{frame}{Introdução}

&nbsp; \\begin{itemize}

&nbsp;   \\item Contexto da pesquisa

&nbsp;   \\item Problema investigado

&nbsp;   \\item Objetivos principais

&nbsp; \\end{itemize}

\\end{frame}

```



```tex

% apresentacao/slides/02-metodologia.tex

\\begin{frame}{Metodologia}

&nbsp; \\begin{itemize}

&nbsp;   \\item Desenho da pesquisa

&nbsp;   \\item Procedimentos adotados

&nbsp;   \\item Instrumentos de coleta

&nbsp; \\end{itemize}

\\end{frame}

```



```tex

% apresentacao/slides/03-resultados.tex

\\begin{frame}{Resultados}

&nbsp; \\begin{figure}

&nbsp;   \\centering

&nbsp;   \\includegraphics\[width=0.7\\textwidth]{../figuras/exemplo-figura}

&nbsp;   \\caption{Exemplo de resultado.}

&nbsp; \\end{figure}

\\end{frame}

```



```tex

% apresentacao/slides/04-conclusoes.tex

\\begin{frame}{Conclusões}

&nbsp; \\begin{itemize}

&nbsp;   \\item Principais contribuições

&nbsp;   \\item Limitações

&nbsp;   \\item Trabalhos futuros

&nbsp; \\end{itemize}

\\end{frame}

```



---



\## ✅ Resultado



Agora você tem:

\- \*\*Dissertação (main.tex)\*\*  

\- \*\*Artigo científico (artigos/artigo.tex)\*\*  

\- \*\*Apresentação (apresentacao/apresentacao.tex)\*\*  



Todos integrados na mesma estrutura, compartilhando a mesma \*\*bibliografia.bib\*\* e estilo ABNT.



---



Quer que eu prepare também um \*\*Makefile\*\* ou script para compilar automaticamente dissertação, artigo e apresentação em sequência, facilitando seu fluxo de trabalho?



