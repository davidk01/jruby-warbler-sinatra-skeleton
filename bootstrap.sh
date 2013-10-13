#!/bin/bash
# assuming jruby, bundler, and warbler are installed we generate the runnable war file
bash -l -c 'rvm use jruby && bundle install && warble'
