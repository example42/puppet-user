#
# user module
#
# Copyright (C) 2007 admin@immerda.ch
# Copyright 2008, Puzzle ITC
# Marcel Harry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute
# it and/or modify it under the terms of the GNU
# General Public License version 3 as published by
# the Free Software Foundation.

class user (
  $managed_hash = {},
  ) {

  if $managed_hash != {} {
    validate_hash($managed_hash)
    create_resources('user::managed', $managed_hash)
  }

}
