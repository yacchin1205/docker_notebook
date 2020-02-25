FROM docker:stable as static-docker-source

FROM jupyter/scipy-notebook

USER root

COPY --from=static-docker-source /usr/local/bin/docker /usr/local/bin/docker

USER $NB_USER
