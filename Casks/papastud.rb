cask "papastud" do
  version "0.0.14"

  on_arm do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-arm64-#{version}.zip"
    sha256 "69e9f67cb32ba26f0cdaebf4853bf5049b551d86985cbed53a0477b1362d9b06"
  end

  on_intel do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-x64-#{version}.zip"
    sha256 "06b0afadc11f6f87843ca5180eda66aae7ca6adb3ddd0b3ac187907bbc94c8d5"
  end

  name "PapaStud"
  desc "Screenshot failure reviewer for Android testing tools"
  homepage "https://github.com/eboudrant/papa-stud"

  app "PapaStud.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/PapaStud.app"]
  end

  zap trash: [
    "~/Library/Application Support/PapaStud",
  ]
end
