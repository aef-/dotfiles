local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}
local act = wezterm.action

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

config.keys = {
  {
    key = '9',
    mods = 'ALT',
    action = act.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' },
  },
  { key = 'n', mods = 'CTRL', action = act.SwitchWorkspaceRelative(1) },
  { key = 'p', mods = 'CTRL', action = act.SwitchWorkspaceRelative(-1) },
}

wezterm.on('gui-startup', function(cmd)
  -- allow `wezterm start -- something` to affect what we spawn
  -- in our initial window
  local args = {}
  if cmd then
    args = cmd.args
  end

  -- Set a workspace for coding on a current project
  -- Top pane is for the editor, bottom pane is for the build tool
  local project_dir = wezterm.home_dir .. '/'
  local tab, build_pane, window = mux.spawn_window {
    workspace = 'coding',
    cwd = project_dir,
    args = args,
  }
  window:gui_window():maximize()

  -- build_pane:send_text 'cargo build\n'

  -- We want to startup in the coding workspace
  mux.set_active_workspace 'coding'
end)

return config
