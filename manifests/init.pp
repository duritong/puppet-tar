# manifests/init.pp

class tar {
    case $operatingsystem {
        openbsd: { include tar::openbsd }
        default: { include tar::base }
    }
}

class tar::base {
    package{'tar': ensure => present, }
}

class tar::openbsd {
    openbsd::special_package{'gtar-1.19': }
}
