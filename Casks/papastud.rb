cask "papastud" do
  version "0.0.15"

  on_arm do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-arm64-#{version}.zip"
    sha256 "2ff1ec15e4f7827225155a8b10103b8ec1e5461222342dcccfbaebcab21dc394"
  end

  on_intel do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-x64-#{version}.zip"
    sha256 "8558e6bb7d98902cc8ba0ef8ca3187de0ced316024d41d1862888a3c80573af8"
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
