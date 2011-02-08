#
# Copyright (C) 2009 The Android Open Source Project
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
#
KERNEL_VER := 2.6.29.6-CyanogenMod
MOD_SRC:= device/htc/heroc/prebuilt/system/lib/modules
MOD_DST := system/lib/modules
SRC := $(MOD_SRC)/$(KERNEL_VER)/kernel
DST := $(MOD_DST)/$(KERNEL_VER)/kernel

PRODUCT_COPY_FILES += \
    $(SRC)/crypto/crc32c.ko:$(DST)/crypto/crc32c.ko \
    $(SRC)/crypto/deflate.ko:$(DST)/crypto/deflate.ko \
    $(SRC)/drivers/hid/hid-dummy.ko:$(DST)/drivers/hid/hid-dummy.ko \
    $(SRC)/fs/cifs/cifs.ko:$(DST)/fs/cifs/cifs.ko \
    $(SRC)/lib/libcrc32c.ko:$(DST)/lib/libcrc32c.ko \
    $(SRC)/net/ipv4/tunnel4.ko:$(DST)/net/ipv4/tunnel4.ko \
    $(SRC)/net/ipv6/ah6.ko:$(DST)/net/ipv6/ah6.ko \
    $(SRC)/net/ipv6/esp6.ko:$(DST)/net/ipv6/esp6.ko \
    $(SRC)/net/ipv6/ip6_tunnel.ko:$(DST)/net/ipv6/ip6_tunnel.ko \
    $(SRC)/net/ipv6/ipcomp6.ko:$(DST)/net/ipv6/ipcomp6.ko \
    $(SRC)/net/ipv6/mip6.ko:$(DST)/net/ipv6/mip6.ko \
    $(SRC)/net/ipv6/sit.ko:$(DST)/net/ipv6/sit.ko \
    $(SRC)/net/ipv6/tunnel6.ko:$(DST)/net/ipv6/tunnel6.ko \
    $(SRC)/net/ipv6/xfrm6_mode_beet.ko:$(DST)/net/ipv6/xfrm6_mode_beet.ko \
    $(SRC)/net/ipv6/xfrm6_mode_ro.ko:$(DST)/net/ipv6/xfrm6_mode_ro.ko \
    $(SRC)/net/ipv6/xfrm6_mode_transport.ko:$(DST)/net/ipv6/xfrm6_mode_transport.ko \
    $(SRC)/net/ipv6/xfrm6_mode_tunnel.ko:$(DST)/net/ipv6/xfrm6_mode_tunnel.ko \
    $(SRC)/net/ipv6/xfrm6_tunnel.ko:$(DST)/net/ipv6/xfrm6_tunnel.ko \
    $(SRC)/net/netfilter/xt_hashlimit.ko:$(DST)/net/netfilter/xt_hashlimit.ko \
    $(SRC)/net/netfilter/xt_TCPMSS.ko:$(DST)/net/netfilter/xt_TCPMSS.ko \
    $(SRC)/net/xfrm/xfrm_ipcomp.ko:$(DST)/net/xfrm/xfrm_ipcomp.ko

