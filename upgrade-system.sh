#!/bin/bash

aptitude update
aptitude safe-upgrade -y
aptitude purge && aptitude autoclean