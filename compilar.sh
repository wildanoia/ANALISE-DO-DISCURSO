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