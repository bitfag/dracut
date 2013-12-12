#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

# called by dracut
check() {
    [[ $hostonly ]] || [[ $mount_needs ]] && return 1

    return 0
}

# called by dracut
depends() {
    echo fcoe bash
    return 0
}

# called by dracut
install() {
    inst_hook cmdline 20 "$moddir/parse-uefifcoe.sh"
}
