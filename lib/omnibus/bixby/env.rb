
module Bixby

  def self.omnibus_env
    install_dir = "/opt/bixby" # TODO hardcoded for now. not sure how to access
    {
      "CFLAGS"  =>     "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
      "LDFLAGS" => "-Wl,-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",

      "PATH"    => "#{install_dir}/embedded/bin:#{ENV["PATH"]}"
    }
  end

end
