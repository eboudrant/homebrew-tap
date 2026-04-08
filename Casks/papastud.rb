cask "papastud" do
  version "0.0.3"

  on_arm do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-arm64-#{version}.zip"
    sha256 "896bb4b9aab434ccac0e192735b854be080769eaeffa5871e70319686f0ba07c"
  end

  on_intel do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-x64-#{version}.zip"
    sha256 "753f315e25b7ab3913a6ad725035a2b47b8ee4d59143b464aedd878c549fe84f"
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
