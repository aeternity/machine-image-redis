.SHELL := /bin/bash

.PHONY: help test activate venv

.DEFAULT_GOAL := help

help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

venv: venv/bin/activate

venv/bin/activate:
	test -d venv || python3 -m venv venv
	. venv/bin/activate && pip install 'ansible==2.7.10'
	touch venv/bin/activate
