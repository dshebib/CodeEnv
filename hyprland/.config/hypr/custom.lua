-- Personal overrides (loaded last by hyprland.lua)

-- Point apps at the GNOME/GCR SSH agent that systemd starts at login
hl.env("SSH_AUTH_SOCK", os.getenv("XDG_RUNTIME_DIR") .. "/gcr/ssh")
