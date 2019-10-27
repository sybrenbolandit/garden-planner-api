heroku container:login
./gradlew stage
heroku container:push web --app gardenplanner-api
heroku container:release web --app gardenplanner-api
