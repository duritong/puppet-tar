# manifests/init.pp

class tar {
    case $operatingsystem {
        openbsd: { include tar::openbsd }
        default: { include tar::base }
    }
}
