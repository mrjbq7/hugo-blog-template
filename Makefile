run:
	hugo server --buildDrafts --buildFuture --destination dev

site:
	hugo
	rm -rf public/pagefind
	pagefind --site public

deploy:
	cd public && COPYFILE_DISABLE=1 tar --no-xattrs -cf - . | ssh user@server "cd blog && tar xpvf -"
#	scp -r public/* user@server:blog/

serve:
	pagefind --site dev --serve
