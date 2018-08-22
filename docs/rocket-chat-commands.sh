docker run --name db -d mongo:3.0 --smallfiles
docker run --name rocketchat -p 127.0.0.1:3000:3000 --env ROOT_URL=http://localhost --link db -d rocket.chat
