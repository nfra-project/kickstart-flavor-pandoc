# Developing this container

To test the container without pulling it from registry got to `test` directory
and run `./kickstart.sh`. Afterwards go to the example directory and run
`kickstart --offline`.


## Dockerhub integration

- The docker-service must be added to group-repository by hand
  by the user of the automated build.
  
In docker there should be following build-settings:

| Type | Name | Dockerfile Location | Docker Tag name |
|--------|---------------|---------------------|--------------------|
| Branch | master                 | /                   | unstable   |
| Branch | `/^([0-9.]+)-stable$/` | /                   | {\1}       |

## Modify ckit version in dockerfile


