test:
	nextflow run main.nf \
		--reads 's3://tick-genome/dna/2018-06-28/*{R1,R2}*_first1Mreads.fastq.gz' \
		--outdir test-output \
		-profile docker
