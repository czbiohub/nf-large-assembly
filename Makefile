test:
	nextflow run main.nf \
		--reads 's3://tick-genome/dna/2018-06-28/*R{1,2}*_first1Mreads.fastq.gz' \
		--outdir test-output \
		-e.process.executor=awsbatch \
		-e.process.queue=nextflow \
		-e.aws.region=us-west-2 \
		-work-dir s3://tick-genome/nextflow/

scratch:
	nextflow run scratch.nf -e.process.executor=local \
		-dump-channels \
		-profile none \
		-e.aws.region=us-west-2
