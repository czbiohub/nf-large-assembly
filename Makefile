test:
	nextflow run main.nf \
		--reads 's3://tick-genome/dna/2018-06-28/*{R1,R2}*_first1Mreads.fastq.gz' \
		--outdir test-output \
		-profile docker


test_fastas:
	nextflow run main.nf \
		--fasta 'test-data/Ixodes-scapularis-Wikel_CONTIGS_IscaW1_first100lines.fasta,test-data/GCA_002892825.2_ISE6_asm2.2_deduplicated_genomic_first100lines.fasta'
