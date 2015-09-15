#====================================================
# Theme
#====================================================

# Statusbar Color Palatte
set-option -g status-justify left
set-option -g status-bg black
set-option -g status-fg white
set-option -g status-left-length 40
set-option -g status-right-length 80

# Pane Border Color Palette
set-option -g pane-active-border-fg green
set-option -g pane-active-border-bg black
set-option -g pane-border-fg white
set-option -g pane-border-bg black

# Message Color Palette
set-option -g message-fg black
set-option -g message-bg green

# Window Status Color Palette
setw -g window-status-bg black
setw -g window-status-current-fg green
setw -g window-status-bell-attr default
setw -g window-status-bell-fg red
#setw -g window-status-content-attr default
#setw -g window-status-content-fg yellow
setw -g window-status-activity-attr default
setw -g window-status-activity-fg yellow

### Status bar config
###########################################################################
setw -g window-status-current-format "|#I:#W|"
#set-window-option -g automatic-rename off
set-option -g allow-rename off