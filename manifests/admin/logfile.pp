
# FIXME: Should auto-increment id.
# concat::fragment ensures conflicts conflict

define zendserver::admin::logfile (
  $id,
  $path = '',
  $directive = '',
)
{
  $logfiles = '/usr/local/zend/gui/application/data/logfiles.xml'

  concat::fragment{"zendserver_admin_logfile_${id}":
    target  => $logfiles,
    order   => $id+20,
    content => 
"        <logfile id=\"${id}\">
                <name>${name}</name>
                <value>${path}</value>
                <directive>${directive}</directive>
        </logfile>\n"
  }
}
