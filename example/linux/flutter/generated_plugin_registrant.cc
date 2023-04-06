//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <uninstaller/uninstaller_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) uninstaller_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UninstallerPlugin");
  uninstaller_plugin_register_with_registrar(uninstaller_registrar);
}
