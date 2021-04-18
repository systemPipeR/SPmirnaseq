################################################################
##                        Bowtie2-Index                       ##
################################################################

cwlVersion: v1.0
class: CommandLineTool
doc: "[bowtie](http://bowtie-bio.sourceforge.net/manual.shtml#the-bowtie-build-indexer): Fast and sensitive read alignment"
label: Last updated 04/2021
hints:
  SoftwareRequirement:
    packages:
    - package: bowtie
      version: [ 1.3.0 ]

################################################################
##           baseCommand and arguments definitions            ##
################################################################

baseCommand: [ bowtie-build ]

requirements:
  InitialWorkDirRequirement:
    listing: [ $(inputs.idx_basedir) ]
    
arguments:
  - valueFrom: $(inputs.idx_basedir.path)/$(inputs.idx_basename)
  - valueFrom: $(inputs.idx_basedir.path)/$(inputs.idx_basename)
    
################################################################
##               Inputs and Outputs Settings                  ##
################################################################

inputs:
  idx_basename:
    label: "Path to the directory containing the index for the reference genome"
    type: string
  idx_basedir:
    label: "Basename of the bowtie2 index files"
    type: Directory

outputs:
  index_files1:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).1.ebwt
  index_files2:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).2.ebwt
  index_files3:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).3.ebwt
  index_files4:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).4.ebwt
  index_files5:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).rev.1.ebwt
  index_files6:
    type: File
    outputBinding:
      glob: $(inputs.idx_basedir.path)/$(inputs.idx_basename.path).rev.2.ebwt
