#!/bin/bash

killall polybar
polybar $1 &
polybar $2 &
