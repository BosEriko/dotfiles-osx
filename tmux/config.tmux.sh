
" ================================================================================= [Config] ===== "

# Set default shell
set-option -g default-shell /bin/zsh

# History Limit
set -g history-limit 10000

# automatically renumber tmux windows
set -g renumber-windows on

# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# for nested tmux sessions
bind-key a send-prefix

# Activity Monitoring
setw -g monitor-activity off
set -g visual-activity off

# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on

# make delay shorter
set -sg escape-time 0

# tile all windows
unbind =
bind = select-layout tiled

# cycle through panes
# unbind C-a
# unbind o # this is the default key for cycling panes
# bind ^A select-pane -t:.+

# make window/pane index start with 1
set -g base-index 1
setw -g pane-base-index 1

set-option -g set-titles on
set-option -g set-titles-string "#T - #W"
# set-window-option -g automatic-rename on

# TMUX color
set -g default-terminal 'screen-256color'

######################
#### Key Bindings ####
######################

# reload config file
bind r source-file ~/.tmux.conf \; display "Config Reloaded!"

# split window and fix path for tmux 1.9
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"
bind c new-window -c '#{pane_current_path}'

# Stop autorename on window
set-option -g allow-rename off

# synchronize all panes in a window
bind y setw synchronize-panes

# pane movement shortcuts
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# Resize pane shortcuts
bind -r H resize-pane -L 1
bind -r J resize-pane -D 1
bind -r K resize-pane -U 1
bind -r L resize-pane -R 1

# set vi mode for copy mode
setw -g mode-keys vi
# more settings to make copy-mode more vim-like
unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind -Tcopy-mode-vi 'v' send -X begin-selection
bind -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel "tmux save-buffer - | reattach-to-user-namespace pbcopy"

# Buffers to/from Mac clipboard, yay tmux book from pragprog
bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
bind C-v run "tmux set-buffer $(reattach-to-user-namespace pbpaste); tmux paste-buffer"

# Tmux theme
source-file "${HOME}/.tmux-themepack/powerline/double/green.tmuxtheme"

