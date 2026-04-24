class Springcraft < Formula
  desc 'A modern CLI scaffolder for Spring Boot projects'
  homepage 'https://github.com/fmitesh007/springcraft-cli'
  version '0.3.1'
  license 'MIT'

  on_macos do
    on_intel do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-macos'
      sha256 '7edf7c5e3506fb9cecdc7eb92acdd25c73f7450742ed85824c2994a51fa31879'
    end
    on_arm do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-macos'
      sha256 '7edf7c5e3506fb9cecdc7eb92acdd25c73f7450742ed85824c2994a51fa31879'
    end
  end

  on_linux do
    url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-linux'
    sha256 '6f6e27559dd995aa81519e19f4c3a96cbb3426b9a3ad7963cf54b323a3de18c7'
  end

  def install
    bin.install 'springcraft-macos' => 'springcraft'
  end

  test do
    system "#{bin}/springcraft", '--version'
  end
end
