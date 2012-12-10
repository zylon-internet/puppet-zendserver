class zendserver {

  class {
    'zendserver::admin::logfile::concat': ;
  }
      
  zendserver::admin::logfile { 
    'PHP Error Log': 
      id        => 0,
      directive => "error_log";
    'Server Error Log':
      id        => 1,
      path      => "/usr/local/zend/var/log/error.log";
    'Server Access Log':
      id        => 2,
      path      => "/usr/local/zend/var/log/access.log";
  }

}
