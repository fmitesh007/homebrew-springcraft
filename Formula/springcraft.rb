class Springcraft < Formula
  desc 'A modern CLI scaffolder for Spring Boot projects'
  homepage 'https://github.com/fmitesh007/springcraft-cli'
  version '0.3.0'
  license 'MIT'

  on_macos do
    on_intel do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.0/springcraft-macos'
      sha256 '01e8f94352e1ce62cf6255de66142b4c74b507e1406264c15e0e5955ff452d16'
    end
    on_arm do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.0/springcraft-macos'
      sha256 '01e8f94352e1ce62cf6255de66142b4c74b507e1406264c15e0e5955ff452d16'
    end
  end

  on_linux do
    url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.0/springcraft-linux'
    sha256 'c4443abd937afc932a9abdfd76703c6acdff09203d1033ebd65263d77118d117'
  end

  def install
    bin.install "springcraft-#{OS.kernel_name.downcase}" => 'springcraft'
  end

  test do
    system "#{bin}/springcraft", '--version'
  end
end
