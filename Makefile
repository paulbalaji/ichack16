default: deploy

deploy:
	@rm -rf ../paulbalaji.github.io/* && \
	cp -r ./build/* ../paulbalaji.github.io && \
	cd ../paulbalaji.github.io && \
	git add --all && \
	git commit -m "Deploy" && \
	git push


resize_images:
	find ./build/images/whatis -name "*.jpg" -o -name "*.png" | while read line ; do mogrify -verbose -resize '800x800>' "$$line" ; done
