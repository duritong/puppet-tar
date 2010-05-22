class tar::openbsd {
  case $operatingsystemrelease {
    '4.3': { openbsd::special_package{'gtar-1.19': } }
    default: { openbsd::special_package{'gtar-1.22p0': } }
  }
}
