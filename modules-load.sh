#!/etc/rc.common

start() {
    cat /etc/modules-load.d/* | grep -v "^#" | grep -v "^$" | xargs -r -n 1 modprobe
}

enable() {
    /etc/init.d/pre enable
    ln -s /etc/init.d/$this /etc/rc.d/pre/$this
}

disable() {
    rm /etc/rc.d/pre/$this
}
