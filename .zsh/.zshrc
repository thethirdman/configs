# This is only here so zsh shuts up about not finding .zshrc in $ZDOTDIR.
# The zsh rc files is sourced elsewhere
for i in ~/.zsh/*.zsh; do
	source $i
done
