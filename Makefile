# https://www.gnu.org/software/make/manual/make.html
PATH := ./env/bin:${PATH}
.PHONY: all dev clean dev pyserve
PY := python3

include .env.dev
export

SRC := ./src
DIST := ./dist
BUILD := ./build

ifeq ($(SSL), true)
PROTOCOL := HTTPS
else
PROTOCOL := HTTP
endif
URL := $(PROTOCOL)://$(HOST):$(PORT)

cert: # HTTPS server
		if [ ! -d "./certs" ]; then mkdir ./certs; fi
		if [ -f "./certs/openssl.conf" ] ; then \
		openssl req -x509 -new -config ./certs/openssl.conf -out ./certs/cert.pem -keyout ./certs/key.pem ;  else \
		openssl req -x509 -nodes -newkey rsa:4096 -out ./certs/cert.pem -keyout ./certs/key.pem -sha256 -days 365 ;fi

clean: $(DIST) $(BUILD) 
		rm -r $(DIST)/* $(BUILD)/*

clcache: 
		rm -r __pycache__

docker-up:
		docker compose -p $(PROJECT) -f ./config/compose.yaml up -d

docker-down:
		docker compose -p $(PROJECT) -f ./config/compose.yaml down

env:
		$(PY) -m venv env

test:
		echo $(PATH)
		$(PY) --version
		$(PY) -m pip --version

test-os:
		$(PY) -c 'import sys;print(sys.platform)'
		

pi: 
		$(PY) -m pip install $(filter-out $@,$(MAKECMDGOALS))
		$(PY) -m pip freeze > requirements.txt

pi:
		$(PY) -m pip install -U $(filter-out $@,$(MAKECMDGOALS))
		$(PY) -m pip freeze > requirements.txt

pia: requirements.txt
		$(PY) -m pip install -r requirements.txt

%: # https://www.gnu.org/software/make/manual/make.html#Automatic-Variables 
		@:

