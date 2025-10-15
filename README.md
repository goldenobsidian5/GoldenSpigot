# DashSpigot [![Build](https://img.shields.io/github/actions/workflow/status/dashnetworkxyz/DashSpigot/build.yml?branch=master&label=Build)](https://github.com/dashnetworkxyz/DashSpigot/actions/workflows/build.yml)
Fork of [PandaSpigot](https://github.com/hpfxd/PandaSpigot) 1.8.8 focused on bug fixes and API backports.

See a full list of patches [here](./patches/dashspigot/).

## Using
You can download the latest pre-built server JAR by clicking the download button below.  
[![Download](https://custom-icon-badges.demolab.com/badge/-Download-blue?style=for-the-badge&logo=download&logoColor=white)](https://jenkins.dashnetwork.xyz/job/DashSpigot/lastSuccessfulBuild/artifact/paperclip.jar)

## API 
See our API patches [here](./patches/dashspigot/api/).

## Building
To compile PandaSpigot, you'll need:
- JDK 8 (or above)
- Git
- Bash

Building, patching, and compiling are all done through the main `dash` script.

PandaSpigot can be built by running `./dash jar`, and you will find the final Paperclip jar in `paperclip.jar`
