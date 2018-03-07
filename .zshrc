#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PY_USER_BIN=$(python -c 'import site; print(site.USER_BASE + "/bin")')
export PATH=$PY_USER_BIN:$PATH

alias gdb-arm="/usr/local/gcc-arm-none-eabi-6-2017-q2-update/bin/arm-none-eabi-gdb"
alias stressalgo-elf="./build/arm/debug/tests/test-stressalgo/test-stressalgo.elf"
alias jlink-connect="JLinkExe -autoconnect 1 -device NRF52840_XXAA -speed 4000 -if swd"
alias jlink-gdbserver-start="JLinkGDBServer -device NRF52840_XXAA -if SWD"
alias ddd-gdb-arm="ddd --debugger /usr/local/gcc-arm-none-eabi-6-2017-q2-update/bin/arm-none-eabi-gdb"
