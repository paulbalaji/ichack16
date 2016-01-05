watch = mimosa watch
build = mimosa build

.PHONY : start startd build build-opt buildo clean pack package deploy all

all: build start

start:
	@echo "[x] Building assets and starting development server..."
	@$(watch) -s

startd:
	@echo "[x] Cleaning compiled directory, building assets and starting development server.."
	@$(watch) -sd

build:
	@echo "[x] Building assets..."
	@$(build)

build-opt:
	@echo "[x] Building and optimizing assets..."
	@$(build) -o

buildo:
	@echo "[x] Building and optimizing assets..."
	@$(build) -o

clean:
	@echo "[x] Removing compiled files..."
	@mimosa clean

pack:
	@echo "[x] Building and packaging application..."
	@$(build) -omp

preview:
	@mimosa watch --server

package:
	@echo "[x] Building and packaging application..."
	@$(build) -omp

deploy:
	@echo "[x] Building and deploying application..."
	@$(build) -mop -P deploy
	cp ./src/CNAME ./deploy
	cd ./deploy && \
	git init . && \
	git add . && \
	git commit -m "Deploy"; \
	git push "git@github.com:icdocsoc/ichack.org.git" master:gh-pages --force && \
	rm -rf .git
