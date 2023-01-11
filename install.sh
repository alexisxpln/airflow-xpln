curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.0/docker-compose.yaml'
echo -e "AIRFLOW_UID=$(id -u)" > .env
echo -e "DAGS_FOLDER=./dags" > .env
docker compose up airflow-init
docker-compose down --volumes --remove-orphans
#rm docker-compose.yaml
