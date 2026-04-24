class Springcraft < Formula
  desc 'A modern CLI scaffolder for Spring Boot projects'
  homepage 'https://github.com/fmitesh007/springcraft-cli'
  version '0.3.1'
  license 'MIT'

  on_macos do
    on_intel do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-macos'
      sha256 '48c9f746cd27346e62736eff6ff704d743e68003268eb4978f3dadd98234aeb7'
    end
    on_arm do
      url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-macos'
      sha256 '48c9f746cd27346e62736eff6ff704d743e68003268eb4978f3dadd98234aeb7'
    end
  end

  on_linux do
    url 'https://github.com/fmitesh007/springcraft-cli/releases/download/v0.3.1/springcraft-linux'
    sha256 'eb61110343bf48d47179b572fb8f189420a0f9b89177f833319ea1222a619933'
  end

  def install
    bin.install 'springcraft-macos' => 'springcraft'
  end

  test do
    system "#{bin}/springcraft", '--version'
  end
end
