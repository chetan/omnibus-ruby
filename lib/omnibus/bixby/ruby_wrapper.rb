
module Bixby

  # Ruby bin wrapper to disable RVM env
  def self.ruby_wrapper(cmd, install_dir)

    script = "#{install_dir}/bin/#{cmd}"
    File.open(script, 'w') do |f|

      f.puts <<-EOF
#!/usr/bin/env bash

unset GEM_HOME GEM_PATH
# unset MY_RUBY_HOME RUBY_VERSION

#{install_dir}/bin/#{cmd} $*
EOF

    end

    File.chmod(0755, script)

  end # ruby_wrapper

end
