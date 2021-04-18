################################################################
##                 sRNAbench_profiling.cwl                    ##
################################################################

cwlVersion: v1.0
class: CommandLineTool
doc: "[sRNAbench](https://bioinfo2.ugr.es/srnatoolbox/manual/"
label: Last updated 04/2021
hints:
  SoftwareRequirement:
    packages:
    - package: sRNAbench

################################################################
##           baseCommand and arguments definitions            ##
################################################################

baseCommand: ["sRNAbench.jar"]

################################################################
##               Inputs and Outputs Settings                  ##
################################################################

inputs:
  fq1:
    type: File
    inputBinding:
      prefix: input=
  output_mapping:
    type: Directory
    inputBinding:
      prefix: output=
  microRNA:
    type: string
    inputBinding:
      prefix: microRNA=
  species:
    type: string
    inputBinding:
      prefix: species=
  SampleName:
    label: "Filename to write output to"
    type: string
  results_path:
    label: "Path to the results directory"
    type: Directory

stdout: $(input.output_mapping)/log.log

outputs:
  sRNAbench_mapping:
    type: stdout
    
