# terraform-vmware-vsphere-licenses
A small terraform module for vsphere license management. 

## Overview
This submodule was created to help automate bringing up my vmware environment. I have a variety of submodules I have written that I will be publishing and then referencing in my code. This is purely intended to be a convenience / consistency for deployments and allow for more lazy deployments with better accountability for what is where and why (i.e. tagging and good naming conventions). Feel free to make a PR to expand on functionality if it makes sense for the module use-case. 

Also feel free to fork a copy of this or any of the other publicly released submodules here and adjust as seems right to your use-case.

## Requirments
* A valid vsphere deployment
* a correctly configured terraform provider for this, which will be passed as a provider when using this submodule
* a map of strings that includes at least one name for a license and a valid key. No restrictions are placed here, and keys do not validate. If your key is invalid, terraform will bark,

## Usage:
Provide a map of strings representing the license names and the repsective keys, and ensure all keys are valid for vsphere to understand (some licenses provided by VMWare cannot be uploaded here via terraform or the api, example SDDC Cloud Foundation License).
