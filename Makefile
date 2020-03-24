NAME=deploy-ml-models-api
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://uza9FRPw5ZM2CeGR1wGh@pypi.fury.io/nickrood/  -t registry.heroku.com/$(NAME)/web:$(COMMIT_ID) .

push-ml-api-heroku:
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web:$(COMMIT_ID)
