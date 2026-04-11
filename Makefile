dcup:
	docker compose -f ./deployment/mlflow/docker-compose.yaml up -d

dcdown:
	docker compose -f ./deployment/mlflow/docker-compose.yaml down