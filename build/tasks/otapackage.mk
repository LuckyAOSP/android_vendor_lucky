# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2021 LuckyAOSP
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

# -----------------------------------------------------------------
# UA OTA update package

LU_TARGET_PACKAGE := $(TARGET_PRODUCT)
ifeq ($(TARGET_BUILD_TYPE),debug)
  LU_TARGET_PACKAGE := $(LU_TARGET_PACKAGE)_debug
endif

LU_TARGET_PACKAGE := $(PRODUCT_OUT)/$(LU_TARGET_PACKAGE)-$(PLATFORM_VERSION)-$(shell date -u +%Y%m%d).zip

.PHONY: otapackage
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
	@echo "Package UA-OTA: $(LU_TARGET_PACKAGE)"
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LU_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(LU_TARGET_PACKAGE) | cut -d ' ' -f1 > $(LU_TARGET_PACKAGE).md5sum
