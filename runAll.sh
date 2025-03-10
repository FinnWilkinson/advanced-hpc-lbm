#!/bin/bash

./d2q9-bgk input_128x128.params obstacles_128x128.dat
python3 check/check.py --ref-av-vels-file=check/128x128.av_vels.dat --ref-final-state-file=check/128x128.final_state.dat --av-vels-file=./av_vels.dat --final-state-file=./final_state.dat

./d2q9-bgk input_128x256.params obstacles_128x256.dat
python3 check/check.py --ref-av-vels-file=check/128x256.av_vels.dat --ref-final-state-file=check/128x256.final_state.dat --av-vels-file=./av_vels.dat --final-state-file=./final_state.dat

./d2q9-bgk input_256x256.params obstacles_256x256.dat
python3 check/check.py --ref-av-vels-file=check/256x256.av_vels.dat --ref-final-state-file=check/256x256.final_state.dat --av-vels-file=./av_vels.dat --final-state-file=./final_state.dat

./d2q9-bgk input_1024x1024.params obstacles_1024x1024.dat
python3 check/check.py --ref-av-vels-file=check/1024x1024.av_vels.dat --ref-final-state-file=check/1024x1024.final_state.dat --av-vels-file=./av_vels.dat --final-state-file=./final_state.dat
