
# 📝 ARQUIVOS ESSENCIAIS
## Mestrado em Letras - UFT

- **Projeto**: Análise do Discurso
- **Autora**: Wilda Barbosa Noia
- **Orientador**: Prof. Dr.
- **Instituição**: Fundação Universidade Federal do Tocantins  - Porto Nacional
- **Programa**: Pós-Graduação em Letras

## 📁 Estrutura do Projeto

```bash
Mestrado/
├── dissertacao/          # Arquivos da dissertação (LaTeX)
├── artigo/               # Artigo científico (LaTeX)
├── apresentacao/         # Apresentações (LaTeX Beamer)
├── notas_obsidian.md     # Anotações e referências
└── anexos/              # Arquivos auxiliares
```

## 🔧 Como Usar

### Compilar LaTeX
```bash
./compilar.sh
```

### Controle de Versão
```bash
git add .
git commit -m "mensagem"
git push
```

### Plugins Obsidian Recomendados
- Obsidian Git (controle de versão)
- Templates
- Calendar

# 📋 Normas

- ABNT NBR 14724:2011 (Trabalhos acadêmicos)
- Template baseado no abnTeX2
- Formatação conforme PPGL-UFT

### `notas_obsidian.md` (atualizado para Git)
---
tags: [mestrado, uft, letras, git]
created: 27-11-2025
version: 0.5

---
## Notas do Mestrado - UFT Letras

### 🔬 Projeto de Pesquisa

**Título**: Análise do Discurso em Obras Contemporâneas

**Repositório Git**: `https://github.com/wildanoia/ANALISE-DO-DISCURSO.git`

### 📚 Estrutura de Versionamento

#### Branches Principais
- `main`: Versão estável
- `develop`: Desenvolvimento
- `feature/*`: Novas funcionalidades

#### Commits Semânticos
- `feat:` Nova funcionalidade
- `fix:` Correção de bugs
- `docs:` Documentação
- `style:` Formatação
- `refactor:` Refatoração

### 💡 Workflow de Trabalho

#### 1. Anotações no Obsidian
- Fazer anotações em markdown
- Usar tags para organização
- Linkar referências

#### 2. Escrita no LaTeX
- Editar arquivos .tex
- Compilar com `./compilar.sh`
- Verificar resultado em PDF

#### 3. Versionamento no Git

```bash
# Atualizar repositório
git pull origin main

# Adicionar mudanças
git add .

# Commitar
git commit -m "feat: adiciona capítulo de revisão"

# Enviar
git push origin develop
```

### 🔗 Links do Projeto

- **Dissertação**: `dissertacao/main.tex`
- **Artigo**: `artigo/artigo.tex`
- **Apresentação**: `apresentacao/apresentacao.tex`



*Último commit: {{date:DD/MM/YYYY HH:mm}}*
## 🔄 SCRIPT DE COMPILAÇÃO ATUALIZADO

### `compilar.sh`
```bash
#!/bin/bash

echo "🔄 Iniciando compilação do projeto..."

# Criar pasta de anexos se não existir
mkdir -p anexos

echo "📝 Limpando arquivos temporários..."
find . -name "*.aux" -delete
find . -name "*.log" -delete
find . -name "*.out" -delete
find . -name "*.toc" -delete
find . -name "*.lof" -delete
find . -name "*.lot" -delete

echo "📖 Compilando dissertação..."
cd dissertacao
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
cd ..

echo "📄 Compilando artigo..."
cd artigo
pdflatex -interaction=nonstopmode artigo.tex
bibtex artigo
pdflatex -interaction=nonstopmode artigo.tex
pdflatex -interaction=nonstopmode artigo.tex
cd ..

echo "🎤 Compilando apresentação..."
cd apresentacao
pdflatex -interaction=nonstopmode apresentacao.tex
cd ..

echo "🧹 Limpeza final..."
find . -name "*.aux" -delete
find . -name "*.log" -delete
find . -name "*.out" -delete
find . -name "*.toc" -delete
find . -name "*.lof" -delete
find . -name "*.lot" -delete
find . -name "*.nav" -delete
find . -name "*.snm" -delete
find . -name "*.vrb" -delete
find . -name "*.bbl" -delete
find . -name "*.blg" -delete
find . -name "*.run.xml" -delete

echo "✅ Compilação concluída!"
echo ""
echo "📁 Arquivos gerados:"
echo "   📘 dissertacao/main.pdf"
echo "   📄 artigo/artigo.pdf" 
echo "   🎤 apresentacao/apresentacao.pdf"
echo ""
echo "💾 Arquivos temporários removidos!"
echo "🚀 Pronto para commit no Git!"
```
