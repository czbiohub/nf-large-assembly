test_aws:
	nextflow run main.nf \
		--reads 'testing/*R{1,2}*_first1Mreads.fastq.gz' \
		--outdir test-output \
		-e.process.executor=awsbatch \
		-e.process.queue=nextflow \
		-e.aws.region=us-west-2 \
		-work-dir s3://tick-genome/nextflow/ \
		--minlength 135

test_local:
	nextflow run main.nf \
		--reads 'testing/*R{1,2}*_first1Mreads.fastq.gz' \
		--outdir test-output \
		-profile docker \
		--minlength 135

scratch:
	nextflow run scratch.nf -e.process.executor=local \
		-dump-channels \
		-profile none \
		-e.aws.region=us-west-2


docker: docker_build docker_push

docker_build:
	@docker build \
		--build-arg VCS_REF=`git rev-parse --short HEAD`  \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
		-t czbiohub/nf-large-assembly .

docker_push:
	sudo docker login
	sudo docker push czbiohub/nf-large-assembly
	docker images
