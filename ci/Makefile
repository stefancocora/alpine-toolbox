PIPELINE="alpine_toolbox"
PIPELINE_PRS="alpine_toolbox_prs"
PIPELINE_PRS_EXAMPLE="alpine_toolbox_prs-example"
CONCOURSE_TARGET="ci.local"

default: set_pipeline ;

.PHONY: set_pipeline
set_pipeline:
	$(MAKE) set_pipeline_prs
	$(MAKE) set_pipeline_master

.PHONY: set_pipeline_prs
set_pipeline_prs:
	fly -t $(CONCOURSE_TARGET) set-pipeline -c prs.yml -p $(PIPELINE_PRS)
	fly -t $(CONCOURSE_TARGET) expose-pipeline -p $(PIPELINE_PRS)

.PHONY: set_pipeline_prs_example
set_pipeline_prs_example:
	fly -t $(CONCOURSE_TARGET) set-pipeline -c prs-example.yml -p $(PIPELINE_PRS_EXAMPLE)
	fly -t $(CONCOURSE_TARGET) expose-pipeline -p $(PIPELINE_PRS_EXAMPLE)

.PHONY: set_pipeline_master
set_pipeline_master:
	fly -t $(CONCOURSE_TARGET) set-pipeline -c main.yml -p $(PIPELINE)
	fly -t $(CONCOURSE_TARGET) expose-pipeline -p $(PIPELINE)

