default: deploy

deploy:
	@rm -rf ../paulbalaji.github.io/* && \
	cp -r ./build/* ../paulbalaji.github.io && \
	cd ../paulbalaji.github.io && \
	git add --all && \
	git commit -m "Deploy" && \
	git push