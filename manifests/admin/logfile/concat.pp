class zendserver::admin::logfile::concat {

  include concat::setup

  $logfiles = '/usr/local/zend/gui/application/data/logfiles.xml'

  concat {
    $logfiles: ;
  }

  concat::fragment {
    "zendserver_admin_logfile_header":
      order   => 15,
      target  => $logfiles,
      content => "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<files>\n";
    "zendserver_admin_logfile_footer":
      order   => 95, 
      target  => $logfiles,
      content => "</files>\n";
  }

}
