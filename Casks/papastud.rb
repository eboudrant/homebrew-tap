cask "papastud" do
  version "0.0.11"

  on_arm do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-arm64-#{version}.zip"
    sha256 "25cffe92e941eb1489fdd3022c83c5eb31d223bf7fe99071cc74122d6299d584"
  end

  on_intel do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-x64-#{version}.zip"
    sha256 "1d84f712d92911fff2f328c9ada4b3d4898715bb8689ce67fd1135938dfcdb0e"
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
