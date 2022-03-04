.PHONY: help

AWS_ACCOUNT_ID = 718762496685
APP_NAME = automation-service
REGION = ap-south-1
NAMESPACE = firefox


build-release:
	docker build -t ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${NAMESPACE}/$(APP_NAME):latest .

push-release:
	docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${NAMESPACE}/$(APP_NAME):latest

deploy-release:
	kubectl kustomize ./k8s | kubectl apply -k .

dev-server:
	docker run -it ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${NAMESPACE}/$(APP_NAME):latest

deploy: build-release push-release deploy-release

