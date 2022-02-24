build:
	docker build . --build-arg RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} -f Dockerfile -t showcase
run:
	docker run -p 5000:3000 -e RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} --rm -ti showcase:latest
bash:
	docker run -e RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} --rm -ti showcase:latest bash
prod_console:
	ssh DateFeed -t docker run -e RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} --rm -ti ericroos13/showcase:latest bundle exec rails c
new_prod_console:
	ssh DateFeed -t docker-compose run --rm app bundle exec rails c
create_db:
	ssh DateFeed -t docker run -e RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} --rm -ti showcase:latest bundle exec rake db:create
migrate_db:
	ssh DateFeed -t docker run -e RAILS_MASTER_KEY=${SHOWCASE_ENCKEY} --rm -ti showcase:latest bundle exec rake db:migrate
push_image:
	docker tag showcase:latest ericroos13/showcase && docker tag showcase:latest ericroos13/showcase && docker push ericroos13/showcase
deploy:
	ssh DateFeed "cd /home/ec2-user/deployables/showcase && ./update-service.sh"
circle_ci_deploy:
	ssh ec2-user@54.224.120.0 /home/ec2-user/deploy.sh
deploy_pipeline:
	make build push_image deploy
circleci_deploy_pipeline:
	make build push_image migrate_db circle_ci_deploy
edit_prod_secret:
	EDITOR=vim bundle exec rails credentials:edit --environment production

