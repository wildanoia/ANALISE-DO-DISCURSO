Vou criar a configuração completa para integração mútua entre LaTeX, Obsidian e Git.

## 📁 ESTRUTURA ATUALIZADA COM GIT

```
Mestrado_UFT_Letras/
├── .gitignore                    # Ignora arquivos do LaTeX e Obsidian
├── .gitattributes                # Configurações do Git
├── .obsidian/
│   ├── .gitignore               # Obsidian ignora LaTeX e Git
│   ├── core-plugins.json
│   ├── app.json
│   └── community-plugins.json
├── compilar.sh
├── README.md
├── dissertacao/
├── artigo/
├── apresentacao/
└── notas_obsidian.md
```

## 🔧 ARQUIVOS DE CONFIGURAÇÃO GIT

### `.gitignore` (configuração principal)
```gitignore
# ==================== #
# ARQUIVOS TEMPORÁRIOS LATEX #
# ==================== #
*.aux
*.bbl
*.blg
*.log
*.out
*.toc
*.lof
*.lot
*.idx
*.ilg
*.ind
*.synctex.gz
*.fdb_latexmk
*.fls
*.nav
*.snm
*.vrb
*.run.xml
*-blx.bib
*.bcf
*.acn
*.acr
*.alg
*.glg
*.glo
*.gls
*.ist
*.thm
*.brf

# ==================== #
# ARQUIVOS OBSIDIAN #
# ==================== #
# Configurações locais do Obsidian (não versionar)
.obsidian/workspace.json
.obsidian/app.json
.obsidian/core-plugins.json
.obsidian/graph.json
.obsidian/appearance.json
.obsidian/themes/
.obsidian/plugins/
.obsidian/trash/

# Cache e arquivos temporários do Obsidian
.obsidian/backups/
.obsidian/cache/

# ==================== #
# ARQUIVOS DO SISTEMA #
# ==================== #
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
*~

# ==================== #
# BACKUPS E TEMPORÁRIOS #
# ==================== #
*.backup
*.bak
*.tmp
*.temp

# ==================== #
# PDFs GERADOS (OPCIONAL) #
# ==================== #
# Descomente se não quiser versionar PDFs
# *.pdf

# ==================== #
# EXCEÇÕES - MANTÉM NO GIT #
# ==================== #
!.gitignore
!.gitattributes
!README.md
!compilar.sh
!notas_obsidian.md

# Mantém estrutura de pastas
!dissertacao/
!artigo/
!apresentacao/
!figuras/
!tabelas/

# Arquivos marcadores das pastas
!dissertacao/.gitkeep
!artigo/.gitkeep
!apresentacao/.gitkeep
!figuras/.gitkeep
!tabelas/.gitkeep
```

### `.gitattributes` (para tratamento de arquivos)
```gitattributes
# Arquivos LaTeX
*.tex text
*.bib text
*.cls text
*.sty text

# Arquivos de configuração
*.json text
.gitignore text
.gitattributes text

# Scripts
*.sh text eol=lf
*.bash text eol=lf

# Arquivos Obsidian (markdown)
*.md text

# Binários e PDFs
*.pdf binary
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary

# Difusão para merge de arquivos .tex
*.tex merge=union
```

### `.obsidian/.gitignore` (Obsidian ignora LaTeX e Git)
```gitignore
# Ignora arquivos de compilação do LaTeX
*.aux
*.bbl
*.blg
*.log
*.out
*.toc
*.lof
*.lot
*.synctex.gz
*.fdb_latexmk
*.fls

# Ignora arquivos do Git
.git/
.gitignore
.gitattributes

# Ignora scripts de compilação
compilar.sh
Makefile

# Ignora PDFs gerados (opcional)
*.pdf

# Mantém apenas arquivos markdown do Obsidian
!*.md
```

## 🔧 CONFIGURAÇÕES OBSIDIAN PARA GIT

### `.obsidian/core-plugins.json`
```json
{
  "file-explorer": true,
  "global-search": true,
  "switcher": true,
  "graph": true,
  "backlink": true,
  "outgoing-link": true,
  "tag-pane": true,
  "page-preview": true,
  "daily-notes": true,
  "templates": true,
  "note-composer": true,
  "command-palette": true,
  "editor-status": true,
  "starred": true,
  "markdown-importer": false,
  "outline": true,
  "word-count": true,
  "file-recovery": true
}
```

### `.obsidian/app.json`
```json
{
  "attachmentFolderPath": "./anexos",
  "newLinkFormat": "relative",
  "useMarkdownLinks": true,
  "alwaysUpdateLinks": true,
  "trashOption": "local",
  "showLineNumber": false,
  "readableLineLength": true,
  "strictLineBreaks": false,
  "showFrontmatter": true,
  "foldHeading": true,
  "foldIndent": true,
  "spellcheck": true,
  "vimMode": false
}
```

### `.obsidian/community-plugins.json` (para plugin Git)
```json
{
  "obsidian-git": true
}
```

## 📝 ARQUIVOS ESSENCIAIS

### `README.md`
```markdown
# Mestrado em Letras - UFT

**Projeto**: Análise do Discurso em Obras Contemporâneas  
**Autor**: Seu Nome Completo  
**Orientador**: Prof. Dr. Nome do Orientador  
**Instituição**: Universidade Federal do Tocantins  
**Programa**: Pós-Graduação em Letras

## 📁 Estrutura do Projeto

```
Mestrado_UFT_Letras/
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

## 📋 Normas
- ABNT NBR 14724:2011 (Trabalhos acadêmicos)
- Template baseado no abnTeX2
- Formatação conforme PPGL-UFT
```

### `notas_obsidian.md` (atualizado para Git)
```markdown
---
tags: [mestrado, uft, letras, git]
created: 2025-01-01
version: 1.0
---
# Notas do Mestrado - UFT Letras

## 🔬 Projeto de Pesquisa

**Título**: Análise do Discurso em Obras Contemporâneas

**Repositório Git**: `https://github.com/seu-usuario/mestrado-uft-letras`

## 📚 Estrutura de Versionamento

### Branches Principais
- `main`: Versão estável
- `develop`: Desenvolvimento
- `feature/*`: Novas funcionalidades

### Commits Semânticos
- `feat:` Nova funcionalidade
- `fix:` Correção de bugs
- `docs:` Documentação
- `style:` Formatação
- `refactor:` Refatoração

## 💡 Workflow de Trabalho

### 1. Anotações no Obsidian
- Fazer anotações em markdown
- Usar tags para organização
- Linkar referências

### 2. Escrita no LaTeX
- Editar arquivos .tex
- Compilar com `./compilar.sh`
- Verificar resultado em PDF

### 3. Versionamento no Git
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

## 🔗 Links do Projeto

- **Dissertação**: `dissertacao/main.tex`
- **Artigo**: `artigo/artigo.tex`
- **Apresentação**: `apresentacao/apresentacao.tex`

---

*Último commit: {{date:DD/MM/YYYY HH:mm}}*
```

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

## 🎯 CONFIGURAÇÃO DO PLUGIN GIT NO OBSIDIAN

### Passos para configurar:

1. **Instale o plugin "Obsidian Git"** no Obsidian
2. **Configure as settings** (Settings → Obsidian Git):

```yaml
# Configurações recomendadas:
Vault backup interval: 60 minutes
Auto pull: true
Auto push: true
Commit message: "chore: backup automático {{date}}"
```

3. **No arquivo `.obsidian/plugins/obsidian-git/data.json`**:
```json
{
  "commitMessage": "chore: backup automático {{date}}",
  "autoCommitMessage": "chore: backup {{date}}",
  "commitInterval": 60,
  "autoPull": true,
  "autoPush": true,
  "pullInterval": 60,
  "disablePush": false,
  "listChangedFilesInMessageBody": false,
  "showStatusBar": true,
  "updateSubmodules": false,
  "syncMethod": "merge",
  "customMessageOnAutoBackup": false,
  "autoBackupAfterFileChange": false,
  "fileChangeInterval": 5,
  "gitPath": "",
  "nameToSaveBackup": "",
  "differentIntervalCommitAndPush": false,
  "previousVaultName": ""
}
```

## ✅ COMANDOS GIT INICIAIS

### Para inicializar o repositório:
```bash
git init
git add .
git commit -m "feat: estrutura inicial do projeto mestrado"
git branch -M main
# git remote add origin https://github.com/seu-usuario/mestrado-uft-letras.git
# git push -u origin main
```

## 🎉 RESULTADO FINAL

Agora você tem integração completa:

- **✅ Git**: Controla versões dos arquivos fonte (.tex, .md, configurações)
- **✅ LaTeX**: Compila apenas arquivos essenciais, ignora temporários e Obsidian
- **✅ Obsidian**: Faz anotações em markdown, ignora arquivos LaTeX e Git
- **✅ Plugin Git do Obsidian**: Backups automáticos das anotações
- **✅ Separação clara**: Documentação (Obsidian) vs Produção (LaTeX)

O fluxo de trabalho fica:
1. ✏️ Escrever no Obsidian (anotações, ideias)
2. 📝 Escrever no LaTeX (conteúdo formal)
3. 🔄 Compilar com `./compilar.sh`
4. 💾 Commitar mudanças (manual ou automático)
5. 🚀 Publicar no GitHub quando necessário

Tudo organizado e sem conflitos!