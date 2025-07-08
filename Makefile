REGISTRY=us-west1-docker.pkg.dev/behemothvn/library/vibico
LP_IMAGE_NAME=vibico-lp
COMMIT_SHA=$(shell git rev-parse HEAD)
NAMESPACE_SANDBOX=vibico-sandbox
CONTEXT=gke_behemothvn_us-west1_insight-prod

.PHONY: docker-lp-build docker-lp-push k8s-lp-release-sandbox release-lp-sandbox

docker-lp-build:
	docker build --platform=linux/amd64 -f docker/Dockerfile -t $(LP_IMAGE_NAME):latest .
	docker tag $(LP_IMAGE_NAME):latest $(REGISTRY)/$(LP_IMAGE_NAME):latest
	docker tag $(LP_IMAGE_NAME):latest $(REGISTRY)/$(LP_IMAGE_NAME):$(COMMIT_SHA)

docker-lp-push:
	docker push $(REGISTRY)/$(LP_IMAGE_NAME):latest
	docker push $(REGISTRY)/$(LP_IMAGE_NAME):$(COMMIT_SHA)

k8s-lp-release-sandbox:
	kubectl --context=$(CONTEXT) set image deployment/$(LP_IMAGE_NAME) $(LP_IMAGE_NAME)=$(REGISTRY)/$(LP_IMAGE_NAME):$(COMMIT_SHA) -n $(NAMESPACE_SANDBOX)

release-lp-sandbox: docker-lp-build docker-lp-push k8s-lp-release-sandbox

