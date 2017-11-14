####################
#### TITLE:  Convert DICOM to BIDS format @FPPW.
####
#### Contents:
####
#### Source Files: git@github.com:NeuroStat/CustomFormatBIDS.git
#### First Modified: 25/09/17
#### Notes:
#################


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
## Global Variables specified by USER
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Date of initial data release: format YEAR-MM-DD
$InitialDate="2017-11-06"

# Location of raw data folder, containing subjects in different folders
$RawData="/Volumes/1_5_TB_Han_HDD/BIDS_course/AllSub"

# Location of BIDS output
$OutputBIDS="/Volumes/1_5_TB_Han_HDD/BIDS_course/OutBIDS"

# Number of subjects
$nsub=4

# Number of sessions per subject
$nsession=2
# If this number > 1, then flag
$SessFlag=$FALSE
if ($nsession -gt 1) { $SessFlag=$TRUE }

# Does your data contain resting state data (TRUE/FALSE) or DWI (TRUE/FALSE):
$REST=$TRUE
$DWI=$FALSE

# NAMESPACE: how are your ORIGINAL folders called?
# Leave empty if not available
# Add between brackets (seperated by comma)
#     if multiple names for multiple runs
$TASKNAME=@("EP2D_FEAR_RUN1_0004", "EP2D_FEAR_RUN2_0005")
$RESTNAME="EP2D_RESTING_STATE_"
$ANATNAME="T1_MPRAGE_0002"

$INHOMOGNAME="GRE_FIELD_MAPPING_0006"
$B0NAME="GRE_FIELD_MAPPING_0007"

# How do you want your fMRI images to be called: TASK LABEL of OUTPUT
$TASKOUTLBL="FEAR"

# NAMESPACE: pre-fix of your subject: without number
$prefsub='sub-'

# NAMESPACE: some labels with info
# Leave empty if not available/unknown
$ACQUISITION=""  # Custom label to distinguish different sets of parameters used for acquiring data.
$CE=""           # CE stands for contrast ehanced images
$REC=""          # Can be used to distinguish different reconstruction algorithms
$RUN=""          # Index to denote scans of the same modality
$MODALITY=""     # Modality
$ECHO=""         # Echo for task MRI


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
## Checks
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Check whether system is Windows
If ($IsWindows -eq $True) { echo "IsWindows"}
# Write system info to log.txt


Write-Host "Hello World"
Write-Host $InitialDate
Write-Host $RawData
Write-Host $OutputBIDS
Write-Host $nsub
Write-Host $SessFlag
Write-Host $TASKNAME[0]