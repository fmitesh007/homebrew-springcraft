class Springcraft < Formula
  desc 'A modern CLI scaffolder for Spring Boot projects'
  homepage 'https://github.com/fmitesh007/springcraft-cli'
  version '0.2.0'
  license 'MIT'

  on_macos do
    url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.2.0/springcraft-macos'
    sha256 '1e68fbe3ca16bafd78dc79c16bb2217db649f412546791e6abe2de5c47b55048'
  end

  on_linux do
    url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.2.0/springcraft-linux'
    sha256 '9c0727b43e4391a2a843843d82b74e2584c0f722a6419ce3933cda12b660690f'
  end

  def install
    bin.install "springcraft-#{OS.kernel_name.downcase}" => 'springcraft'
  end

  test do
    system "#{bin}/springcraft", '--version'
  end
end
