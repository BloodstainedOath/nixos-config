{ config, pkgs, ... }:

{
  # 🕒 Set your timezone
  time.timeZone = "Asia/Kolkata";

  # 🌐 Set default language and locale
  i18n.defaultLocale = "en_US.UTF-8";

  # 🖥️ Console (TTY) settings — optional, affects non-GUI sessions
  console = {
    font = "Lat2-Terminus16";     # Good readable TTY font
    # keyMap = "us";                # Set to "in" or "us" based on your preference
    useXkbConfig = true;          # Use X11 keyboard settings in console
  };

   # ⌨️ Wayland layout support via environment vars
  environment.sessionVariables = {
    XKB_DEFAULT_LAYOUT = "us";
    XKB_DEFAULT_OPTIONS = "caps:escape"; # Good for Vim users
  };
}
