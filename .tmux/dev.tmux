#
#   Author  :: Cory Breed
#   Created :: 6/29/16
#
#   Defines a default tmux configuration for development environment
#


# Create anew session
tmux new-session -d -s 'development' -c ~/Documents/Development
tmux split-window -h -p 33 -c ~/Documents/Development
tmux split-window -v -p 50 -c ~/Documents/Development
tmux attach-session -t 'development'

