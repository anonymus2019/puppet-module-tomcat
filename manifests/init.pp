# Class: tomcat


class tomcat(
  $xms            = $::tomcat::params::xms, 
  $xmx            = $::tomcat::params::xmx,
  $java_opts      = $::tomcat::params::java_opts,
  $user           = $::tomcat::params::user,
  $group          = $::tomcat::params::group, 
  $service_name   = $::tomcat::params::service_name,
  $service_state  = $::tomcat::params::service_state
) 
inherits tomcat::params{

 include tomcat::install
 include tomcat::service
 include tomcat::config

}
