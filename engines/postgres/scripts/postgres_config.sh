#paths
export POSTGRESRESULTSPATH=$PWD'/results/logs/postgres'
export POSTGRESQUERIES=$PWD'/engines/postgres/queries'
export POSTGRESUDFS=$PWD'/engines/postgres/udfs'
export POSTGRESSCRIPTS=$PWD'/engines/postgres/scripts'
#environment variables for set up,
export POSTGRESPATH=$PWD'/databases/postgres'
export PSQLPATH=psql
export PSQLSSDPORT="5432"
export PSQLHDDPORT=""
export PSQLMEMPORT=""
export PSQLUSER="stef"
# This should always be PGPASSWORD. This is the variable `psql` reads.
export PGPASSWORD="stef"
export PSQLHOST=pg