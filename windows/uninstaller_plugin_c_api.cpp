#include "include/uninstaller/uninstaller_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "uninstaller_plugin.h"

void UninstallerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  uninstaller::UninstallerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
