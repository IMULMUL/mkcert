class MkcertMaster < Formula
    desc "Simple tool to make locally trusted development certificates"
    homepage "https://github.com/FiloSottile/mkcert"
    head "https://github.com/FiloSottile/mkcert.git"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
        system "go", "build", "-o", bin/"mkcert"
        prefix.install_metafiles
    end
end
