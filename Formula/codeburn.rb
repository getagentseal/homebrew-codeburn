class Codeburn < Formula
  desc "See where your AI coding tokens go - by task, tool, model, and project"
  homepage "https://github.com/getagentseal/codeburn"
  url "https://registry.npmjs.org/codeburn/-/codeburn-0.9.22.tgz"
  sha256 "16856cd5b910eb16a632ac3c875f93118bf37c1106e55461ced5f7316f4c8498"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeburn --version")
  end
end
