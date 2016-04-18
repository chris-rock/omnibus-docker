#!/bin/bash
chef exec bundle install --binstubs
chef exec bin/omnibus "$@"
