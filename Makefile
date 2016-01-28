default: temp-deploy

temp-deploy:
	@rm -rf ../paulbalaji.github.io/ichack/* && \
	cp -r ./build/* ../paulbalaji.github.io/ichack && \
	cd ../paulbalaji.github.io && \
	git add --all && \
	git commit -m "Deploy" && \
	git push

deploy:
	@echo "[x] Building and deploying application..."
	mkdir deploy && \
	cp -r ./build/* ./deploy && \
	cd ./deploy && \
	git init . && \
	git add --all && \
	git commit -m "Deploy" && \
	git push "git@github.com:icdocsoc/ichack.org.git" master:gh-pages --force && \
	rm -rf .git
	rm -rf deploy

resize_images:
	find ./build/images/sponsors -name "*.jpg" -o -name "*.png" | while read line ; do mogrify -verbose -resize '1000x1000>' "$$line" ; done
