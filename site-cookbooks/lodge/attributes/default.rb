default['lodge']['database']['adapter'] = 'mysql2'
default['lodge']['database']['host'] = 'localhost'
default['lodge']['database']['username'] = 'root'
default['lodge']['database']['password'] = ''
default['lodge']['database']['encoding'] = 'utf8'
default['lodge']['database']['pool'] = 5
default['lodge']['domain'] = 'example.com'
default['lodge']['email']['delivery_method'] = 'smtp'
default['lodge']['email']['sender'] = 'lodge@example.com'
default['lodge']['email']['smtp']['address'] = 'localhost'
default['lodge']['email']['smtp']['port'] = 25
default['lodge']['email']['smtp']['domain'] = 'example.com:3000'
default['lodge']['email']['smtp']['authentication'] = 'plain'
default['lodge']['email']['smtp']['enable_starttls_auto'] = true
default['lodge']['rails']['root'] = '/var/rails/lodge'
default['lodge']['rails']['environment'] = 'production'
default['lodge']['unicorn']['user'] = 'lodge'
default['lodge']['unicorn']['worker_processes'] = 3
default['lodge']['unicorn']['timeout'] = 15
default['lodge']['unicorn']['preload_app'] = true
default['lodge']['unicorn']['listen'] = '0.0.0.0:3000'
default['lodge']['unicorn']['tcp_nopush'] = true
default['lodge']['unicorn']['stderr_path'] = default['lodge']['rails']['root'] + '/log/unicorn.stderr.log'
default['lodge']['unicorn']['stdout_path'] = default['lodge']['rails']['root'] + '/log/unicorn.stdout.log'
default['lodge']['unicorn']['pid_path'] = default['lodge']['rails']['root'] + '/tmp/unicorn.pid'
 
