#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=heroc

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary/akmd

adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/AudioPara4.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara4.csv
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPreProcess.csv
adb pull /system/etc/firmware/brf6350.bin ../../../vendor/htc/$DEVICE/proprietary/brf6350.bin
adb pull /system/etc/wifi/Fw1251r1c.bin ../../../vendor/htc/$DEVICE/proprietary/Fw1251r1c.bin
adb pull /system/lib/egl/libGLES_qcom.so ../../../vendor/htc/$DEVICE/proprietary/libGLES_qcom.so
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_ril.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libspeech.so ../../../vendor/htc/$DEVICE/proprietary/libspeech.so

chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd

./setup-makefiles.sh
