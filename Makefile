dcup:
	docker compose -f ./deployment/mlflow/docker-compose.yaml up -d

dcdown:
	docker compose -f ./deployment/mlflow/docker-compose.yaml down

features:
	python src/features/engineer.py --input data/processed/cleaned_house_data.csv --output data/processed/featured_house_data.csv --preprocessor models/trained/preprocessor.pkl

modelling:
	python src/models/train_model.py   --config configs/model_config.yaml   --data data/processed/featured_house_data.csv   --models-dir models   --mlflow-tracking-uri http://localhost:5555