################################################################
##                 sRNAbench_pre.cwl                    ##
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
  output_pre:
    type: Directory
    inputBinding:
      prefix: output=
  adapterMinLength:
    type: int
    inputBinding:
      prefix: adapterMinLength=
  adapter:
    type: string
    inputBinding:
      prefix: adapter=
  removeBarcode:
    type: int
    inputBinding:
      prefix: removeBarcode=
  SampleName:
    label: "Filename to write output to"
    type: string
  results_path:
    label: "Path to the results directory"
    type: Directory

stdout: $(input.output_pre)/log.log

outputs:
  sRNAbench_pre:
    type: stdout
    
