{
    "class": "CommandLineTool",
    "cwlVersion": "v1.0",
    "$namespaces": {
        "sbg": "https://sevenbridges.com"
    },
    "id": "nikolapeja6/gi/gi-gatk4-2/21",
    "baseCommand": [
        "/gatk/gatk CNNScoreVariants"
    ],
    "inputs": [
        {
            "sbg:altPrefix": "-R",
            "id": "InputFileReference",
            "type": "File[]",
            "inputBinding": {
                "position": 1,
                "prefix": "--reference",
                "valueFrom": "${return inputs.InputFileReference[0].path}"
            },
            "label": "Reference",
            "doc": "Reference sequence file.\n\nFirst file must be a FASTA file. \n\nThe second and third files must be corresponding FAI and DICT (order is not important)",
            "sbg:fileTypes": "FASTA, FAI, DICT"
        },
        {
            "sbg:altPrefix": "-V",
            "id": "InputFileVariant",
            "type": "File",
            "inputBinding": {
                "position": 2,
                "prefix": "--variant"
            },
            "label": "Variant",
            "doc": "A VCF file containing variants.",
            "sbg:fileTypes": "VCF"
        },
        {
            "id": "--architecture",
            "type": "File?",
            "inputBinding": {
                "position": 3,
                "prefix": "--architecture"
            },
            "doc": "Neural Net architecture configuration json file."
        },
        {
            "id": "--arguments_file",
            "type": "File[]?",
            "inputBinding": {
                "position": 4,
                "prefix": "--arguments_file"
            },
            "doc": "Read one or more arguments files and add them to the command line."
        },
        {
            "sbg:altPrefix": "-CIPB",
            "sbg:toolDefaultValue": "-1",
            "id": "--cloud-index-prefetch-buffer",
            "type": "int?",
            "inputBinding": {
                "position": 5,
                "prefix": "--cloud-index-prefetch-buffer"
            },
            "doc": "Size of the cloud-only prefetch buffer (in MB; 0 to disable). Defaults to cloudPrefetchBuffer if unset."
        },
        {
            "sbg:altPrefix": "-CPB",
            "sbg:toolDefaultValue": "40",
            "id": "--cloud-prefetch-buffer",
            "type": "int?",
            "inputBinding": {
                "position": 6,
                "prefix": "--cloud-prefetch-buffer"
            },
            "doc": "Size of the cloud-only prefetch buffer (in MB; 0 to disable)."
        },
        {
            "sbg:altPrefix": "-DBIC",
            "sbg:toolDefaultValue": "false",
            "id": "--disable-bam-index-caching",
            "type": "boolean?",
            "inputBinding": {
                "position": 7,
                "prefix": "--disable-bam-index-caching"
            },
            "doc": "If true, don't cache bam indexes, this will reduce memory requirements but may harm performance if many intervals are specified. Caching is automatically disabled if there are no intervals specified."
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--disable-sequence-dictionary-validation",
            "type": "boolean?",
            "inputBinding": {
                "position": 8,
                "prefix": "--disable-sequence-dictionary-validation"
            },
            "doc": "If specified, do not check the sequence dictionaries from our inputs for compatibility. Use at your own risk!"
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--filter-symbolic-and-sv",
            "type": "boolean?",
            "inputBinding": {
                "position": 9,
                "prefix": "--filter-symbolic-and-sv"
            },
            "doc": "If set will filter symbolic and and structural variants from the input VCF."
        },
        {
            "sbg:altPrefix": "-gcs-retries",
            "sbg:toolDefaultValue": "20",
            "id": "--gcs-max-retries",
            "type": "int?",
            "inputBinding": {
                "position": 10,
                "prefix": "--gcs-max-retries"
            },
            "doc": "If the GCS bucket channel errors out, how many times it will attempt to re-initiate the connection."
        },
        {
            "sbg:toolDefaultValue": "\"\"",
            "id": "--gcs-project-for-requester-pays",
            "type": "string?",
            "inputBinding": {
                "position": 11,
                "prefix": "--gcs-project-for-requester-pays"
            },
            "doc": "Project to bill when accessing \"requester pays\" buckets. If unset, these buckets cannot be accessed."
        },
        {
            "sbg:altPrefix": "-h",
            "sbg:toolDefaultValue": "false",
            "id": "--help",
            "type": "boolean?",
            "inputBinding": {
                "position": 12,
                "prefix": "--help"
            },
            "doc": "Display the help message."
        },
        {
            "sbg:altPrefix": "-imr",
            "sbg:toolDefaultValue": "ALL",
            "id": "intervalMergingRule",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "ALL",
                        "OVERLAPPING_ONLY"
                    ],
                    "name": "intervalMergingRule"
                }
            ],
            "inputBinding": {
                "position": 13,
                "prefix": "--interval-merging-rule"
            },
            "doc": "Interval merging rule for abutting intervals."
        },
        {
            "sbg:altPrefix": "-L",
            "id": "--intervals",
            "type": "string[]?",
            "inputBinding": {
                "position": 14,
                "prefix": "--intervals"
            },
            "doc": "One or more genomic intervals over which to operate."
        },
        {
            "sbg:toolDefaultValue": "128",
            "id": "--read-limit",
            "type": "int?",
            "inputBinding": {
                "position": 15,
                "prefix": "--read-limit"
            },
            "doc": "Maximum number of reads to encode in a tensor, for 2D models only."
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--sites-only-vcf-output",
            "type": "boolean?",
            "inputBinding": {
                "position": 16,
                "prefix": "--sites-only-vcf-output"
            },
            "doc": "If true, don't emit genotype fields when writing vcf file output."
        },
        {
            "sbg:toolDefaultValue": "reference",
            "id": "tensorType",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "reference",
                        "read_tensor"
                    ],
                    "name": "tensorType"
                }
            ],
            "inputBinding": {
                "position": 17,
                "prefix": "--tensor-type"
            },
            "doc": "Name of the tensors to generate, reference for 1D reference tensors and read_tensor for 2D tensors."
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--version",
            "type": "boolean?",
            "inputBinding": {
                "position": 16,
                "prefix": "--version"
            },
            "doc": "Display the version number for this tool."
        },
        {
            "id": "--weights",
            "type": "File?",
            "inputBinding": {
                "position": 19,
                "prefix": "--weights"
            },
            "doc": "Keras model HD5 file with neural net weights."
        },
        {
            "sbg:toolDefaultValue": "128",
            "id": "--window-size",
            "type": "int?",
            "inputBinding": {
                "position": 20,
                "prefix": "--window-size"
            },
            "doc": "Neural Net input window size."
        },
        {
            "sbg:toolDefaultValue": "true",
            "id": "--add-output-sam-program-record",
            "type": "boolean?",
            "inputBinding": {
                "position": 21,
                "prefix": "--add-output-sam-program-record"
            },
            "doc": "If true, adds a PG tag to created SAM/BAM/CRAM files."
        },
        {
            "sbg:toolDefaultValue": "true",
            "id": "--add-output-vcf-command-line",
            "type": "boolean?",
            "inputBinding": {
                "position": 22,
                "prefix": "--add-output-vcf-command-line"
            },
            "doc": "If true, adds a command line header line to created VCF files."
        },
        {
            "sbg:altPrefix": "-OBI",
            "sbg:toolDefaultValue": "true",
            "id": "--create-output-bam-index",
            "type": "boolean?",
            "inputBinding": {
                "position": 23,
                "prefix": "--create-output-bam-index"
            },
            "doc": "If true, create a BAM/CRAM index when writing a coordinate-sorted BAM/CRAM file."
        },
        {
            "sbg:altPrefix": "-OBM",
            "sbg:toolDefaultValue": "false",
            "id": "--create-output-bam-md5",
            "type": "boolean?",
            "inputBinding": {
                "position": 24,
                "prefix": "--create-output-bam-md5"
            },
            "doc": "If true, create a MD5 digest for any BAM/SAM/CRAM file created"
        },
        {
            "sbg:altPrefix": "-OVI",
            "sbg:toolDefaultValue": "true",
            "id": "--create-output-variant-index",
            "type": "boolean?",
            "inputBinding": {
                "position": 25,
                "prefix": "--create-output-variant-index"
            },
            "doc": "If true, create a VCF index when writing a coordinate-sorted VCF file."
        },
        {
            "sbg:altPrefix": "-OVM",
            "sbg:toolDefaultValue": "false",
            "id": "--create-output-variant-md5",
            "type": "boolean?",
            "inputBinding": {
                "position": 26,
                "prefix": "--create-output-variant-md5"
            },
            "doc": "If true, create a a MD5 digest any VCF file created."
        },
        {
            "sbg:altPrefix": "-DF",
            "id": "--disable-read-filter",
            "type": "string[]?",
            "inputBinding": {
                "position": 27,
                "prefix": "--disable-read-filter"
            },
            "doc": "Read filters to be disabled before analysis"
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--disable-tool-default-read-filters",
            "type": "boolean?",
            "inputBinding": {
                "position": 28,
                "prefix": "--disable-tool-default-read-filters"
            },
            "doc": "Disable all tool default read filters (WARNING: many tools will not function correctly without their default read filters on)"
        },
        {
            "sbg:altPrefix": "-XL",
            "id": "--exclude-intervals",
            "type": "string[]?",
            "inputBinding": {
                "position": 29,
                "prefix": "--exclude-intervals"
            },
            "doc": "One or more genomic intervals to exclude from processing\n\nUse this argument to exclude certain parts of the genome from the analysis (like -L, but the opposite). This argument can be specified multiple times. You can use samtools-style intervals either explicitly on the command line (e.g. -XL 1 or -XL 1:100-200) or by loading in a file containing a list of intervals (e.g. -XL myFile.intervals)."
        },
        {
            "id": "--gatk-config-file",
            "type": "File?",
            "inputBinding": {
                "position": 30,
                "prefix": "--gatk-config-file"
            },
            "doc": "A configuration file to use with the GATK."
        },
        {
            "sbg:altPrefix": "-I",
            "id": "--input",
            "type": "File[]?",
            "inputBinding": {
                "position": 31,
                "prefix": "--input"
            },
            "doc": "BAM/SAM/CRAM file containing reads",
            "sbg:fileTypes": "BAM, SAM, CRAM"
        },
        {
            "sbg:altPrefix": "-ixp",
            "sbg:toolDefaultValue": "0",
            "id": "--interval-exclusion-padding",
            "type": "int?",
            "inputBinding": {
                "position": 32,
                "prefix": "--interval-exclusion-padding"
            },
            "doc": "Amount of padding (in bp) to add to each interval you are excluding.\n\nUse this to add padding to the intervals specified using -XL. For example, '-XL 1:100' with a padding value of 20 would turn into '-XL 1:80-120'. This is typically used to add padding around targets when analyzing exomes."
        },
        {
            "sbg:altPrefix": "-ip",
            "sbg:toolDefaultValue": "0",
            "id": "--interval-padding",
            "type": "int?",
            "inputBinding": {
                "position": 33,
                "prefix": "--interval-padding"
            },
            "doc": "Amount of padding (in bp) to add to each interval you are including.\n\nUse this to add padding to the intervals specified using -L. For example, '-L 1:100' with a padding value of 20 would turn into '-L 1:80-120'. This is typically used to add padding around targets when analyzing exomes."
        },
        {
            "sbg:altPrefix": "-isr",
            "sbg:toolDefaultValue": "UNION",
            "id": "intervalSetRule",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "UNION",
                        "INTERSECTION"
                    ],
                    "name": "intervalSetRule"
                }
            ],
            "inputBinding": {
                "position": 34,
                "prefix": "--interval-set-rule"
            },
            "doc": "Set merging approach to use for combining interval inputs\n\nBy default, the program will take the UNION of all intervals specified using -L and/or -XL. However, you can change this setting for -L, for example if you want to take the INTERSECTION of the sets instead. E.g. to perform the analysis only on chromosome 1 exomes, you could specify -L exomes.intervals -L 1 --interval-set-rule INTERSECTION. However, it is not possible to modify the merging approach for intervals passed using -XL (they will always be merged using UNION). Note that if you specify both -L and -XL, the -XL interval set will be subtracted from the -L interval set.\n\nThe --interval-set-rule argument is an enumerated type (IntervalSetRule), which can have one of the following values:\n\nUNION\n    Take the union of all intervals\nINTERSECTION\n    Take the intersection of intervals (the subset that overlaps all intervals specified)"
        },
        {
            "sbg:altPrefix": "-LE",
            "sbg:toolDefaultValue": "false",
            "id": "--lenient",
            "type": "boolean?",
            "inputBinding": {
                "position": 35,
                "prefix": "--lenient"
            },
            "doc": "Lenient processing of VCF files"
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--QUIET",
            "type": "boolean?",
            "inputBinding": {
                "position": 35,
                "prefix": "--QUIET"
            },
            "doc": "Whether to suppress job-summary info on System.err."
        },
        {
            "sbg:altPrefix": "-RF",
            "id": "--read-filter",
            "type": "string[]?",
            "inputBinding": {
                "position": 36,
                "prefix": "--read-filter"
            },
            "doc": "Read filters to be applied before analysis"
        },
        {
            "id": "--read-index",
            "type": "string[]?",
            "inputBinding": {
                "position": 37,
                "prefix": "--read-index"
            },
            "doc": "Indices to use for the read inputs. If specified, an index must be provided for every read input and in the same order as the read inputs. If this argument is not specified, the path to the index for each input will be inferred automatically."
        },
        {
            "sbg:altPrefix": "-VS",
            "sbg:toolDefaultValue": "SILENT",
            "id": "readValidationStringency",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "SILENT",
                        "LENIENT",
                        "STRICT"
                    ],
                    "name": "readValidationStringency"
                }
            ],
            "inputBinding": {
                "position": 38,
                "prefix": "--read-validation-stringency"
            },
            "doc": "Validation stringency for all SAM/BAM/CRAM/SRA files read by this program. The default stringency value SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded."
        },
        {
            "sbg:toolDefaultValue": "10.0",
            "id": "--seconds-between-progress-updates",
            "type": "float?",
            "inputBinding": {
                "position": 39,
                "prefix": "--seconds-between-progress-updates"
            },
            "doc": "Output traversal statistics every time this many seconds elapse"
        },
        {
            "id": "--sequence-dictionary",
            "type": "File?",
            "inputBinding": {
                "position": 40,
                "prefix": "--sequence-dictionary"
            },
            "doc": "Use the given sequence dictionary as the master/canonical sequence dictionary. Must be a .dict file.",
            "sbg:fileTypes": "*.dict"
        },
        {
            "id": "--tmp-dir",
            "type": "File?",
            "inputBinding": {
                "position": 41,
                "prefix": "--tmp-dir"
            },
            "doc": "Temp directory to use."
        },
        {
            "sbg:altPrefix": "-jdk-deflater",
            "sbg:toolDefaultValue": "false",
            "id": "--use-jdk-deflater",
            "type": "boolean?",
            "inputBinding": {
                "position": 42,
                "prefix": "--use-jdk-deflater"
            },
            "doc": "Whether to use the JdkDeflater (as opposed to IntelDeflater)"
        },
        {
            "sbg:altPrefix": "-jdk-inflater",
            "sbg:toolDefaultValue": "false",
            "id": "--use-jdk-inflater",
            "type": "boolean?",
            "inputBinding": {
                "position": 43,
                "prefix": "--use-jdk-inflater"
            },
            "doc": "Whether to use the JdkInflater (as opposed to IntelInflater)"
        },
        {
            "sbg:toolDefaultValue": "INFO",
            "id": "verbosity",
            "type": [
                "null",
                {
                    "type": "enum",
                    "symbols": [
                        "INFO",
                        "ERROR",
                        "WARNING",
                        "DEBUG"
                    ],
                    "name": "verbosity"
                }
            ],
            "inputBinding": {
                "position": 44,
                "prefix": "--verbosity"
            },
            "doc": "The --verbosity argument is an enumerated type (LogLevel), which can have one of the following values:\n\nERROR\nWARNING\nINFO\nDEBUG"
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--disable-avx-check",
            "type": "boolean?",
            "inputBinding": {
                "position": 45,
                "prefix": "--disable-avx-check"
            },
            "doc": "If set, no check will be made for AVX support. Use only if you have installed a pre-1.6 TensorFlow build."
        },
        {
            "sbg:toolDefaultValue": "256",
            "id": "--inference-batch-size",
            "type": "int?",
            "inputBinding": {
                "position": 46,
                "prefix": "--inference-batch-size"
            },
            "doc": "Size of batches for python to do inference on."
        },
        {
            "sbg:toolDefaultValue": "[MQ, DP, SOR, FS, QD, MQRankSum, ReadPosRankSum]",
            "id": "infoAnnotationKeys",
            "type": [
                "null",
                {
                    "type": "array",
                    "items": {
                        "type": "enum",
                        "name": "infoAnnotationKeys",
                        "symbols": [
                            "MQ",
                            "DP",
                            "SOR",
                            "FS",
                            "QD",
                            "MQRankSum",
                            "ReadPosRankSum"
                        ]
                    }
                }
            ],
            "inputBinding": {
                "position": 47,
                "prefix": "--info-annotation-keys"
            },
            "doc": "The VCF info fields to send to python."
        },
        {
            "sbg:toolDefaultValue": "0",
            "id": "--inter-op-threads",
            "type": "int?",
            "inputBinding": {
                "position": 48,
                "prefix": "--inter-op-threads"
            },
            "doc": "Number of inter-op parallelism threads to use for Tensorflow"
        },
        {
            "sbg:toolDefaultValue": "0",
            "id": "--intra-op-threads",
            "type": "int?",
            "inputBinding": {
                "position": 49,
                "prefix": "--intra-op-threads"
            },
            "doc": "Number of intra-op parallelism threads to use for Tensorflow"
        },
        {
            "sbg:toolDefaultValue": "\"\"",
            "id": "--output-tensor-dir",
            "type": "string?",
            "inputBinding": {
                "position": 50,
                "prefix": "--output-tensor-dir"
            },
            "doc": "Optional directory where tensors can be saved for debugging or visualization."
        },
        {
            "sbg:toolDefaultValue": "false",
            "id": "--showHidden",
            "type": "boolean?",
            "inputBinding": {
                "position": 51,
                "prefix": "--showHidden"
            },
            "doc": "display hidden arguments"
        },
        {
            "sbg:toolDefaultValue": "512",
            "id": "--transfer-batch-size",
            "type": "int?",
            "inputBinding": {
                "position": 52,
                "prefix": "--transfer-batch-size"
            },
            "doc": "Size of data to queue for python streaming."
        }
    ],
    "outputs": [
        {
            "id": "OutputFile",
            "doc": "Output file",
            "label": "Output",
            "type": "File",
            "outputBinding": {
                "glob": "output_file.vcf"
            }
        }
    ],
    "label": "gi-gatk4-CNNScoreVariants",
    "arguments": [
        {
            "position": 0,
            "prefix": "--output",
            "valueFrom": "output_file.vcf"
        }
    ],
    "requirements": [
        {
            "class": "ResourceRequirement",
            "ramMin": 8000
        },
        {
            "class": "DockerRequirement",
            "dockerPull": "images.sbgenomics.com/vladimirk/gatk:4.1.0.0"
        },
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "sbg:projectName": "gi",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554421632,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554644566,
            "sbg:revisionNotes": "init"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "midux",
            "sbg:modifiedOn": 1554647794,
            "sbg:revisionNotes": "Sve sam razumeo"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "midux",
            "sbg:modifiedOn": 1554652988,
            "sbg:revisionNotes": "Finished Optional Tool Arguments"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554659054,
            "sbg:revisionNotes": "Add remaining args"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554661736,
            "sbg:revisionNotes": "ID change to full prefix, add default values to \"Tool Defaults\""
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554765671,
            "sbg:revisionNotes": "[tmp] trying out something"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554765773,
            "sbg:revisionNotes": "[tmp]"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554765820,
            "sbg:revisionNotes": "[tmp] 2"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1554765966,
            "sbg:revisionNotes": "[tmp] 3"
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555012633,
            "sbg:revisionNotes": "all fastaa related files?"
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555013499,
            "sbg:revisionNotes": "?"
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555013859,
            "sbg:revisionNotes": "???"
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555722940,
            "sbg:revisionNotes": "[tmp] original gatk image"
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedBy": "midux",
            "sbg:modifiedOn": 1555750194,
            "sbg:revisionNotes": "Set default values for --intervals, isr, --read-index"
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedBy": "midux",
            "sbg:modifiedOn": 1555751229,
            "sbg:revisionNotes": "Deleted all Array<string> default values"
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555766232,
            "sbg:revisionNotes": "add extension to output"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555768054,
            "sbg:revisionNotes": "*same*"
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555804539,
            "sbg:revisionNotes": "min mem to 8GB"
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1556229951,
            "sbg:revisionNotes": "restored original docker image"
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1557496749,
            "sbg:revisionNotes": "Update app name and enum names"
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1557496940,
            "sbg:revisionNotes": "Add description for the inputFileReference for the ordering of files"
        }
    ],
    "sbg:image_url": null,
    "sbg:appVersion": [
        "v1.0"
    ],
    "sbg:id": "nikolapeja6/gi/gi-gatk4-2/21",
    "sbg:revision": 21,
    "sbg:revisionNotes": "Add description for the inputFileReference for the ordering of files",
    "sbg:modifiedOn": 1557496940,
    "sbg:modifiedBy": "nikolapeja6",
    "sbg:createdOn": 1554421632,
    "sbg:createdBy": "nikolapeja6",
    "sbg:project": "nikolapeja6/gi",
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "nikolapeja6",
        "midux"
    ],
    "sbg:latestRevision": 21,
    "sbg:publisher": "sbg",
    "sbg:content_hash": "a37aaeaaa50b103e612663970a296a7e11b5a6d6221f6efaac6552291b6e1a104"
}