default: deploy

deploy:
	@rm -rf ../paulbalaji.github.io/* && \
	cp -r ./build/* ../paulbalaji.github.io && \
	cd ../paulbalaji.github.io && \
	git add --all && \
	git commit -m "Deploy" && \
	git push

final-deploy:
	@echo "[x] Building and deploying application..."
	mkdir deploy && \
	cp -r ./build/* ./deploy && \
	cd ./deploy && \
	git init . && \
	git add --all && \
	git commit -m "Deploy" && \
	git push "git@github.com:icdocsoc/ichack.org.git" master:gh-pages --force && \
	rm -rf .git && \
	rm -rf deploy

resize_images:
	find ./build/images/hero -name "*.jpg" -o -name "*.png" | while read line ; do mogrify -verbose -resize '1000x1000>' "$$line" ; done
