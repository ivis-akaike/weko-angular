#!/usr/bin/env bash
#
# This file is part of WEKO3.
# Copyright (C) 2017 National Institute of Informatics.
#
# WEKO3 is free software; you can redistribute it
# and/or modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of the
# License, or (at your option) any later version.
#
# WEKO3 is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with WEKO3; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307, USA.

# quit on errors and unbound symbols:
set -o errexit

CURRENT_DIR=$(cd $(dirname $0); pwd)

# build-begin
while read dir
do
    # ( cd "${CURRENT_DIR}/$dir"; npm install )
    # ( cd "${CURRENT_DIR}/$dir"; ng build --prod )
    ( cd app-tree-index-edit; npm install )
    ( cd app-tree-index-edit; ng build --prod )
done <<END
app-author-add
app-author-search
app-author-prefix
app-items-author-search
app-tree-index-edit
app-tree-index-journal-edit
app-tree-items-detail
app-tree-items-edit
app-tree-community
END
# build-end
