MAKEFLAGS += --silent

.PHONY: ci-pipeline

ci-pipeline:
	fly -t corporate-supply-chain sp \
		-p pipeline-test \
		-c ci/pipeline.yml \
		-l ci/pipeline-vars.yml
