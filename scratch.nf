println "fromFilePairs:"
 Channel
  .fromFilePairs("s3://tick-genome/dna/2018-06-28/**R{1,2}_001_first1Mreads.fastq.gz")
  .println()

// This works
// println "getBytes()[0..10]:"
  println file('s3://tick-genome/dna/2018-06-28/tick_1_S1_R1_post-trimming_first1Mreads.fastq.gz')
  .getBytes()[0..10]

  // Channel
  //  .fromFilePairs("s3://tick-genome/dna/2018-06-28/adapter_trimmed/*R{1,2}_bbduk_adapter_phix_trimmed.fastq.gz")
  //  .println()

path = "s3://tick-genome/dna/2018-06-28/**"
println "fromPath ${path}"
 Channel
  .fromPath(path, type: 'any', hidden: true,
    maxDepth: -1, followLinks: false,
    relative: false, checkIfExists: false)
  .println()


// println "fromPath ${path}.html"
//   Channel
//    .fromPath("${path}.html", type: 'any')
//    .println()
//
// println "fromPath ${path}z*"
Channel
  .fromPath("s3://tick-genome/dna/2018-06-28/*", type: 'any')
  .println()


  // Channel
  //  .fromPath("s3://czbiohub-seqbot/fastqs/180628_A00111_0168_AHFVJVDMXX/rawdata/*.fastq.gz")
  //  .println()


// Channel
//  .fromPath("s3://czb-seqbot/fastqs/20190419_FS10000331_45_BPC29611-1118/*.fastq.gz")
//  .println()


  // Channel
  //     .fromFilePairs("s3://olgabot-maca/sra/homo_sapiens/smartseq2_quartzseq/**_{1,2}.fastq.gz")
  //     .println()
