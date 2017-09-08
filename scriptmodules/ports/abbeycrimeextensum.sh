#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="abbeycrimeextensum"
rp_module_desc="The Abbey of Crime Extensum - remake of \"The abbey of crime\""
rp_module_licence="PROP"
rp_module_section="opt"

function depends_abbeycrimeextensum() {
    aptInstall openjdk-8-jre
}

function install_abbeycrimeextensum() {
    downloadAndExtract "http://www.retroworks.es/AbadiaExtensum/AbbeyExtensum%20v1.3b.rar" "$md_inst"
}

function configure_abbeycrimeextensum() {
	echo -n "en" > "$md_inst/language"
	addPort "$md_id" "abbeycrimeextensum" "The Abbey of Crime Extensum - remake of \"The abbey of crime\"" "cd $md_inst; java -Xms256M -Xmx256M -jar TheAbbeyOfCrimeExtensum.jar \`cat language\`"
}

function set_spanish_abbeycrimeextensum() {
	echo -n "es" > "$md_inst/language"
}

function set_english_abbeycrimeextensum() {
	echo -n "en" > "$md_inst/language"
}

function set_french_abbeycrimeextensum() {
	echo -n "fr" > "$md_inst/language"
}

function set_italian_abbeycrimeextensum() {
	echo -n "it" > "$md_inst/language"
}
