# 確認
ps:
	docker-compose ps
# ログ
log:
	docker-compose logs
# 起動
build:
	docker-compose up --build -d
up:
	docker-compose up -d
# 停止
stop:
	docker-compose stop
# 削除
down:
	docker-compose down
# 全削除
pr:
	docker system prune

# シェル
ba:
	docker-compose run --rm api bash
bf:
	docker-compose run --rm front sh

# コンソール
c:
	docker-compose exec api rails c
cs:
	docker-compose exec api rails c --sandbox
# mysql起動
db:
	docker-compose exec api rails db

# ルーティング
route:
	docker-compose exec api rails routes
routeu:
	docker-compose exec api rails routes | grep users
routep:
	docker-compose exec api rails routes | grep posts
# Rubocop
rbo:
	docker-compose exec api bundle exec rubocop --require rubocop-airbnb
# Rspec
r:
	docker-compose exec api bundle exec rspec
rr:
	docker-compose exec api bundle exec rspec spec/requests
rs:
	docker-compose exec api bundle exec rspec spec/system
rm:
	docker-compose exec api bundle exec rspec spec/models
rh:
	docker-compose exec api bundle exec rspec spec/helpers

# migrate
m:
	docker-compose exec api rails db:migrate
mr:
	docker-compose exec api rails db:migrate:reset
md:
	docker-compose exec api rails db:migrate:down VERSION=20220309035728
ms:
	docker-compose exec api rails db:migrate:status
seed:
	docker-compose exec api rails db:seed

# プッシュ
p:
	git add .
	git commit -m "first commit"
	git push
