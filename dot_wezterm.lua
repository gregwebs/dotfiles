local wezterm = require 'wezterm';

local keys = {}
table.insert(keys, {
  mods="CTRL",
  key="Tab",
  action=wezterm.action{ActivateTabRelative=1},
})

function basename(s)
  return string.gsub(s, ".*[/\\](.*)", "%1")
end

function dirname(s)
  return string.gsub(s, ".*[/\\](.+)", "%1")
end

function wd_display(s)
  return dirname(string.gsub(s, "file://.*:/Users/gweber/(.*)", "%1"))
end

function user_display(s)
  return string.gsub(s, "gweber@(.*)", "%1")
end

function title_display(s)
  return host_display(user_display(s))
end

function host_display(s)
  return string.gsub(string.gsub(s, "Gregs.*:(.*)", "%1"), "gweber%-(%w+).*:(.*)", "%1 %2")
end

function id(s)
  return s
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local pane = tab.active_pane
  local title = title_display(pane.title) -- wd_display(pane.current_working_dir) .. " " .. basename(pane.foreground_process_name) -- .. " " .. pane.pane_id
  return {
    {Text=" " .. title .. " "},
  }
end)

return {
  tab_bar_at_bottom = true,
  scrollback_lines = 99999,
  -- color_scheme = "Solarized Dark Higher Contrast",
  color_scheme = "Violet Light",
  -- color_scheme = "Solarized (light) (terminal.sexy)",
  keys=keys,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  }
}
