#!/bin/bash

/zeppelin/bin/zeppelin-daemon.sh start && tail -f /entrypoint.sh
