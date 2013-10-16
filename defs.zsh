PGUP=Prior
PGDN=Next

s(){ sleep "$@" }
kk(){ xdotool key --delay 200 "$@" }
k(){ kk "$@"; s 1 }
ret(){ k Return }
tt(){ xdotool type --delay 100 "$@" }
t(){ tt "$@"; ret }

sm(){ k Alt+t ; k "$@" }
visit(){ k Alt+Up }
leave(){ k Alt+Down }
next(){ k Alt+Right }
prev(){ k Alt+Left }
run(){
    WAIT=$1; shift;
    sm Shift+1;
    t "$@";
    s $WAIT
}
with_window(){ k Ctrl+Escape "$@" }
mkframe(){ sm a Return }
nextroot(){ sm $PGUP }
prevroot(){ sm $PGDN }
swaproot(){ sm Ctrl+$PGUP }
current_root(){ k Alt+Return }
toggleterm(){ k Ctrl+F12 }
term(){ sm t }
tmuxctl(){ echo "$@" |xargs -d ' ' -I_ echo Ctrl+b _ |xargs xdotool key }
emacs(){ sm e }
tile_main_left(){ sm f l f l Return y Return }
tile_mix(){ sm f l e m y Return }
tile_space(){ sm f l e s Return y Return }
