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

unzip -j -o ../../../${DEVICE}_update.zip -d ../../../vendor/htc/$DEVICE/proprietary \
	system/bin/akmd \
	system/etc/01_qcomm_omx.cfg \
	system/etc/AudioFilter.csv \
	system/etc/AudioPara4.csv \
	system/etc/AudioPreProcess.csv \
	system/etc/firmware/brf6350.bin \
	system/etc/wifi/Fw1251r1c.bin \
	system/lib/egl/libGLES_qcom.so \
	system/lib/libhardware_legacy.so \
	system/lib/libaudioeq.so \
	system/lib/libcamera.so \
	system/lib/libgps.so \
	system/lib/libhtc_acoustic.so \
	system/lib/libhtc_ril.so \
	system/lib/libmm-adspsvc.so \
	system/lib/liboemcamera.so \
	system/lib/libOmxH264Dec.so \
	system/lib/libOmxMpeg4Dec.so \
	system/lib/libspeech.so
	 
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd

./setup-makefiles.sh
