# Microsoft Virtual Machine Converter

## Description

Microsoft Virtual Machine Converter (MVMC) is a Microsoft-supported, stand-alone solution for the information technology (IT) pro or solution provider who wants to:

* Convert virtual machines and disks from VMware hosts to Hyper-V hosts and Windows Azure
* Convert physical machines and disks to Hyper-V hosts

MVMC provides native support for Windows PowerShell, so it enables scripting and integration with data center automation workflows, such as those authored and run within Microsoft System Center Orchestrator 2012 R2. It can also be invoked through the Windows PowerShell command-line interface.

## Supported Operating Systems

* Windows Server 2008 R2 SP1,
* Windows Server 2012,
* Windows Server 2012 R2

Before you install Microsoft Virtual Machine Converter (MVMC), you must install the following software on the computer on which you want to run MVMC:

* Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 SP1 operating systems
* Microsoft .NET Framework 3.5 and .NET Framework 4 if you install MVMC on Windows Server 2008 R2 SP1
* Microsoft .NET Framework 4.5 if you install MVMC on Windows Server 2012 or Windows 8.

**Note** Although MVMC installs on all of these versions, using the Windows PowerShell cmdlets that are released as part of MVMC requires Windows PowerShell Runtime 3.0, and the cmdlets function only on Windows Server 2012 R2, Windows Server 2012, Windows 8.1, or Windows 8.

* Install Feature Bits Compact server
* Visual C++ Redistributable for Visual Studio 2012 Update 1

## Features

* Install and uninstall via Chocolatey
* Supports 32/64-bit version

## Changelog

### 2017-07-03 Build 3.1.20170703

* version changed to reflect Microsoft's changes (links showing version 3.0 but downloads 3.1)
* SHA256 - mvmc_setup.msi - 520b0d08e0b9d2d95206369e56461d3873fb208f507fbccc28651d43aba37f33 [https://www.virustotal.com/pl/file/520b0d08e0b9d2d95206369e56461d3873fb208f507fbccc28651d43aba37f33/analysis/](https://www.virustotal.com/pl/file/520b0d08e0b9d2d95206369e56461d3873fb208f507fbccc28651d43aba37f33/analysis/)

## Usage

### Direct

```cmd
choco install mvmc -y
```

### YAML (The Foreman puppelabs/chocolatey module)

```yaml
mvmc:
  ensure: latest
  uninstall_options: "--force --all-versions"
  provider: chocolatey
```

or

```yaml
mvmc:
  ensure: latest
```
