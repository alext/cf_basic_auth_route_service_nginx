# CloudFoundry Basic Auth Route Service (nginx based)

This is a Proof-of-Concept CloudFoundry app that implements a route-service to
add HTTP basic authentication to an application.

This uses preconfigured usernames/passwords. Either configured by creating an
htpasswd file called `Staticfile.auth` in the root of the project before
pushing, or setting the `AUTH_USERNAME` and `AUTH_PASSWORD` environment vars
for the app.
