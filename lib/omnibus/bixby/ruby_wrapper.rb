
module Bixby

  # Ruby bin wrapper to disable RVM env
  def self.ruby_wrapper(cmd, install_dir)

    File.open("#{install_dir}/bin/#{cmd}", 'w') do |f|

      f.puts <<-EOF
#!/usr/bin/env bash

unset GEM_HOME GEM_PATH
# unset MY_RUBY_HOME RUBY_VERSION

#{install_dir}/bin/#{cmd} $*
EOF

    end
  end # ruby_wrapper

end
