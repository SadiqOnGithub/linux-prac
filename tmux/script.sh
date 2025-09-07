# create new session inside a new session
:new-session -s mysession

# find key associated with a cmd
tmux list-keys | grep new-session
tmux list-keys -N  | grep session

# find cmd associated with a key
list-keys <key>
C-Space + /

C-Space $       # Rename current session
C-Space ,       # Rename current window
