cwlVersion: v1.0
class: CommandLineTool
arguments:
- prefix: --trimmed-only
baseCommand: cutadapt
inputs:
  adapter:
    type: string
    inputBinding:
      prefix: -a
  outfile:
    type: File
    inputBinding:
      prefix: -o
  minimum-length:
    type: string
    inputBinding:
      prefix: -m
  maximum-length:
    type: string
    inputBinding:
      prefix: -M
  cores:
    type: string
    inputBinding:
      prefix: --cores
  fq1:
    type: File
    inputBinding:
      prefix: ~
  cutadapt:
    type: Directory
outputs:
  outfile:
    type: File
    outputBinding:
      glob: $(inputs.results_path)/$(inputs.cutadapt)/$(inputs.fq1.basename)
