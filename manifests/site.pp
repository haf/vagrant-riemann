node default {
  class { 'riemann':
    before => [
	  Class['riemann::dash'],
	  Class['riemann::health']
	]
  }
  class { 'riemann::dash': }
  class { 'riemann::health': }
}
