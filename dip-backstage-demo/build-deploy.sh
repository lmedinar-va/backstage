#!/bin/sh
yarn install --frozen-lockfile
yarn tsc
yarn build
docker image build . -f packages/backend/Dockerfile --tag registry.heroku.com/dip-backstage-demo/web
docker push registry.heroku.com/dip-backstage-demo/web
heroku container:release web -a dip-backstage-demo
