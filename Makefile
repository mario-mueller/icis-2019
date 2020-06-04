# Makefile for building Markdown manuscripts with pandoc
#

PANDOC_OPTIONS = markdown+pipe_tables+table_captions
PANDOC_FILTER = --filter pandoc-citeproc

# Directories
# Directory containing source files
SOURCE := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

# Directory containing templates
TEMPLATES := $(SOURCE)/templates

# Directory containing built files
OUTPUT := $(SOURCE)/_print

# Directory containing references
REFS := $(SOURCE)/references

# All Markdown files in source folder are considered sources
SOURCES := $(wildcard $(SOURCE)/icis-2019-posse.md)

# All template files in source/templates
TEX_TEMPLATE = icis-2019
REFERENCE-DOC = icis-2019
CSL = icis

BIB = references.bib

PANDOC_PDF_OPTIONS = --pdf-engine=xelatex --template=$(TEMPLATES)/$(TEX_TEMPLATE).tex
PANDOC_DOCX_OPTIONS= --reference-doc=$(TEMPLATES)/$(REFERENCE-DOC).docx

# Convert the list of source files into a list of output files

PDF_OUTPUT	:= $(patsubst %.md,%.pdf,$(subst $(SOURCE),$(OUTPUT),$(SOURCES)))
DOCX_OUTPUT := $(patsubst %.md,%.docx,$(subst $(SOURCE),$(OUTPUT),$(SOURCES)))

ALL_OUTPUTS=\
	$(PDF_OUTPUT) \
	$(DOCX_OUTPUT)

# Pattern-matching Rules

$(OUTPUT)/%.pdf : $(SOURCE)/%.md
	@echo ">>> Creating PDF file"
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_FILTER) $(PANDOC_PDF_OPTIONS) --csl=$(TEMPLATES)/$(CSL).csl --bibliography=$(BIB) --metadata link-citations=true $< -o $@
	
$(OUTPUT)/%.docx : $(SOURCE)/%.md
	@echo ">>> Creating DOCX file"
	@-pandoc -r $(PANDOC_OPTIONS) $(PANDOC_FILTER) $(PANDOC_DOCX_OPTIONS) --csl=$(TEMPLATES)/$(CSL).csl --bibliography=$(BIB) $< -o $@

# Targets and dependencies

.DEFAULT_GOAL := help

.PHONY: all help clean

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  all		to make all formats"
	@echo "  pdf		to make pdf files"
	@echo "  docx 		to make DOCX files"
	@echo "  clean     	to remove everything from _print"

all: $(ALL_OUTPUTS)

pdf: $(PDF_OUTPUT)

docx: $(DOCX_OUTPUT)

clean:
	-rm -rf $(OUTPUT)/*
