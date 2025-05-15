# Authors:
# Copyright 2012-2019 Peter van der Does. All rights reserved.
# Copyright 2025 Nguyễn Huỳnh Anh Khoa. All rights reserved.
#
# Original Author:
# Copyright 2010 Vincent Driessen. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

# list available commands
default: help
    @just --list

# usage information
help:
    @echo "Usage: just [command]"

# Variables

prefix := "/usr/local"
datarootdir := prefix + "/share"
docdir := datarootdir + "/doc/gitflow"

# Executable files

exec_files := "git-flow"

# Script files

script_files := "git-flow-init" + "git-flow-feature" + "git-flow-bugfix" + "git-flow-hotfix" + "git-flow-release" + "git-flow-support" + "git-flow-version" + "git-flow-log" + "git-flow-config" + "gitflow-common" + "gitflow-shFlags"

# Install recipe
install:
    #!/usr/bin/env bash
    mkdir -p {{ prefix }}/bin
    mkdir -p {{ docdir }}/hooks
    install -m 0755 {{ exec_files }} {{ prefix }}/bin
    install -m 0644 {{ script_files }} {{ prefix }}/bin
    install -m 0644 hooks/* {{ docdir }}/hooks

# Uninstall recipe
uninstall:
    #!/usr/bin/env bash
    if [ -d {{ prefix }}/bin ]; then
        cd {{ prefix }}/bin && rm -f {{ exec_files }} {{ script_files }}
    fi
    if [ -d {{ docdir }} ]; then
        rm -rf {{ docdir }}
    fi
