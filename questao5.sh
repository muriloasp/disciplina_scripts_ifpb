#!/bin/bash

date_string=$(date "+%Y-%m-%d-%H-%M")
mkdir /tmp/${date_string}
cp ./* /tmp/${date_string}
