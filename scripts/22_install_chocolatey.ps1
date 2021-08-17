# ------------------------------------------------------------------------------
# Trivadis AG, Infrastructure Managed Services
# Saegereistrasse 29, 8152 Glattbrugg, Switzerland
# ------------------------------------------------------------------------------
# Name.......: 22_install_chocolatey.ps1
# Author.....: Stefan Oehrli (oes) stefan.oehrli@trivadis.com
# Editor.....: Stefan Oehrli
# Date.......: 2021.08.17
# Revision...: 
# Purpose....: Script to install Chocolatey package manager
# Notes......: ...
# Reference..: https://chocolatey.org/
# License....: Apache License Version 2.0, January 2004 as shown
#              at http://www.apache.org/licenses/
# ------------------------------------------------------------------------------
# Modified...:
# see git revision history for more information on changes/updates
# ------------------------------------------------------------------------------

# - Default Values -------------------------------------------------------------
$ScriptName     = $MyInvocation.MyCommand.Name
$Hostname       = (Hostname)
# - EOF Variables --------------------------------------------------------------

# - Initialisation -------------------------------------------------------------
Write-Host "INFO: ==============================================================" 
Write-Host "INFO: Start $ScriptName on host $Hostname at" (Get-Date -UFormat "%d %B %Y %T")
# - EOF Initialisation ---------------------------------------------------------

# - Main -----------------------------------------------------------------------
# install chocolatey
Write-Host '- Install chocolatey -----------------------------------------------'

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "INFO: Finish $ScriptName" (Get-Date -UFormat "%d %B %Y %T")
Write-Host "INFO: ==============================================================" 
# --- EOF ----------------------------------------------------------------------