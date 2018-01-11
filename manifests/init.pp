# Manage NTP
class pbg_ntp {
  ensure_packages(['ntp'])

  file { '/etc/ntp.conf':
    source	=> 'pupet:///modules/pbg_ntp/ntp.conf',
    notify	=> Service['ntp'],
    require	=> Package['ntp'],
  }
