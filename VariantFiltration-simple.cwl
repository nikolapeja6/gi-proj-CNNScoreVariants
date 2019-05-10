{
    "class": "CommandLineTool",
    "cwlVersion": "v1.0",
    "$namespaces": {
        "sbg": "https://sevenbridges.com"
    },
    "id": "nikolapeja6/gi/variantfiltration-simple/7",
    "baseCommand": [
        "/gatk/gatk",
        "VariantFiltration"
    ],
    "inputs": [
        {
            "id": "Ref",
            "type": "File[]?",
            "inputBinding": {
                "position": 0,
                "prefix": "-R",
                "valueFrom": "${return inputs.Ref[0].path}"
            }
        },
        {
            "id": "V",
            "type": "File?",
            "inputBinding": {
                "position": 0,
                "prefix": "-V",
                "secondaryFiles": []
            }
        }
    ],
    "outputs": [
        {
            "id": "output",
            "type": "File?",
            "outputBinding": {
                "glob": "filtered_output.vcf"
            }
        }
    ],
    "label": "VariantFiltration-simple",
    "arguments": [
        {
            "position": 0,
            "prefix": "--output",
            "valueFrom": "filtered_output.vcf"
        },
        {
            "position": 2,
            "prefix": "--filter-expression",
            "valueFrom": "CNN_1D < 0.0"
        },
        {
            "position": 1,
            "prefix": "--filter-name",
            "valueFrom": "my_filter"
        }
    ],
    "requirements": [
        {
            "class": "ExpressionEngineRequirement",
            "id": "#cwl-js-engine",
            "requirements": [
                {
                    "dockerPull": "rabix/js-engine",
                    "class": "DockerRequirement"
                }
            ]
        },
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "hints": [
        {
            "class": "DockerRequirement",
            "dockerPull": "broadinstitute/gatk"
        }
    ],
    "sbg:projectName": "gi",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555804387,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555805283,
            "sbg:revisionNotes": "init"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555805398,
            "sbg:revisionNotes": "v1"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555805759,
            "sbg:revisionNotes": "name of filter"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555806159,
            "sbg:revisionNotes": "float"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555957515,
            "sbg:revisionNotes": "Change \">\" to \"<\" in filter"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555958324,
            "sbg:revisionNotes": "Change cwl version to v1.0"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedBy": "nikolapeja6",
            "sbg:modifiedOn": 1555958935,
            "sbg:revisionNotes": "Remove quotation from strings"
        }
    ],
    "sbg:image_url": null,
    "sbg:appVersion": [
        "v1.0"
    ],
    "sbg:id": "nikolapeja6/gi/variantfiltration-simple/7",
    "sbg:revision": 7,
    "sbg:revisionNotes": "Remove quotation from strings",
    "sbg:modifiedOn": 1555958935,
    "sbg:modifiedBy": "nikolapeja6",
    "sbg:createdOn": 1555804387,
    "sbg:createdBy": "nikolapeja6",
    "sbg:project": "nikolapeja6/gi",
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "nikolapeja6"
    ],
    "sbg:latestRevision": 7,
    "sbg:publisher": "sbg",
    "sbg:content_hash": "ab93784c88923ee74deb879eb5af558393a7e5e08610ec5017888e0342d356dac"
}