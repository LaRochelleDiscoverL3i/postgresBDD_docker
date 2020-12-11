FROM postgres

ENV POSTGRES_USER LaRochelleDiscoverL3i
ENV POSTGRES_PASSWORD LaRochelleDiscoverL3i
ENV POSTGRES_DB LaRochelleDiscoverL3i

RUN rm /docker-entrypoint-initdb.d/tables.sql
COPY tables.sql /docker-entrypoint-initdb.d/