#
#   _____           _            _____     _       ___ _ _
#  |  _  |___ ___ _| |___ ___   |     |___| |_ ___|  _|_| |___
#  |   __| .'|   | . | . |  _|  | | | | .'| '_| -_|  _| | | -_|
#  |__|  |__,|_|_|___|___|___|  |_|_|_|__,|_,_|___|_| |_|_|___|
#
#                                                   Version 0.1
#
#                        Mario Mueller <mailmmmmario@gmail.com>
#
#  ============================================================
#
#  Copyright (C) 2018 Mario Mueller
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#  ============================================================
#

# Markdown extension (e.g. md, markdown, mdown).
MEXT = md

# Directories
SOURCE := manuscript
OUTPUT := build
SECTIONS := $(SOURCE)/sections

TEMPLATES = /Users/mmmmario/Dropbox\ \(Personal\)/templates

# Input files
SRC = $(wildcard $(SOURCE)/*.$(MEXT))
BIB = /Users/mmmmario/Dropbox\ \(Personal\)/library/bib/library.bib # main library
# BIB = /home/mmmmario/Dropbox/library/library.bib # main eOS library
# BIB = references/references.bib # generated via script

# Document options
TEMPLATE = icis-2019
REFERENCE-DOC = icis-2019
CSL = icis

# Pandoc Options
# General options
PANDOC_OPTIONS = markdown+pipe_tables+table_captions+yaml_metadata_block
PANDOC_FILTER = --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-citeproc --filter pandoc-placetable

# Format specific options
PANDOC_MD_OPTIONS = --atx-headers --wrap=preserve
PANDOC_TEX_OPTIONS = --wrap=preserve
PANDOC_PDF_OPTIONS = --pdf-engine=xelatex --template=$(TEMPLATES)/latex/$(TEMPLATE).tex
PANDOC_DOCX_OPTIONS= --reference-doc=$(TEMPLATES)/docx/$(REFERENCE-DOC).docx
PANDOC_ODT_OPTIONS=

TEX=$(SRC:.md=.tex)
PDF=$(SRC:.md=.pdf)
DOCX=$(SRC:.md=.docx)
ODT=$(SRC:.md=.odt)

# Rules
## TEX
%.tex: %.md
	@echo "Creating TeX file from manuscript..."
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_TEX_OPTIONS) $(SOURCE)/metadata.yml -s $(PANDOC_FILTER) --csl=$(TEMPLATES)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

# TODO Move pdf to build folder and name based on metadata
# 			mueller-rosenkranz-2018-short-title.pdf
## PDF
%.pdf: %.md
	@echo "Creating PDF file from manuscript..."
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_PDF_OPTIONS) $(SOURCE)/metadata.yml -s $(PANDOC_FILTER) --csl=$(TEMPLATES)/csl/$(CSL).csl --bibliography=$(BIB) --metadata link-citations=true -o $@ $<

## DOCX
%.docx: %.md
	@echo "Creating Word document from manuscript..."
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_DOCX_OPTIONS) $(SOURCE)/metadata.yml -s $(PANDOC_FILTER) --csl=$(TEMPLATES)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

## ODT
%.odt: %.md
	@echo "Creating OpenDocument file from manuscript..."
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_ODT_OPTIONS) $(SOURCE)/metadata.yml -s $(PANDOC_FILTER) --csl=$(TEMPLATES)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

clean:
	@echo "Removing previously build files from directory..."
	@-rm -f $(SOURCE)/*.pdf $(SOURCE)/*.tex $(SOURCE)/*.docx $(SOURCE)/*.odt

merge:
	@echo "Merging seperate sections into single manuscript file..."
	@-pandoc $(PANDOC_MD_OPTIONS) -o $(SOURCE)/icis-2019-rip.md $(SOURCE)/sections/*.md

prettify:
	@echo "Prettify merged manuscript file..."
	@-prettier --config ./.prettierrc.yml --write $(SOURCE)/icis-2019-rip.md

references:
	@echo "Generating .bib file based on cited references..."
	@-python src/scripts/generate_bib.py

figures:
	@echo "Convert dot files in figures folder into png images..."
	@dot -Tpng -Gdpi=300 ./figures/*.dot

transform:
	@-pandoc --atx-headers --wrap=preserve --track-changes=all -s $(SOURCE_FILE) -t markdown -o $(TARGET_FILE)

tex: clean merge prettify $(TEX)
pdf: clean $(PDF)
docx: clean merge prettify $(DOCX)
odt: clean merge prettify $(ODT)

all: clean merge $(TEX) $(PDF) $(DOCX) $(ODT)
