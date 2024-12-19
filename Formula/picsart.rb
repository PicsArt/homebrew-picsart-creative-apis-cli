require "language/node"

class CliPicsart < Formula
  desc "Picsart Background Removal and Image Enhancement - Allows users to remove backgrounds and upscale images without losing quality."
  homepage "https://picsart.io"
  url "https://github.com/PicsArt/picsart-creative-apis-cli/releases/download/v1.0.0/picsart-1.0.0.tar.gz", :using => :curl
  sha256 "8c7d9d7bf74a9505b7044dcad09181a13bf0d6c23267bb2e4ef1097d0821a18f"
  license "MIT" 
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/picsart", "--version"
  end
end
