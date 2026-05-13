cask "papastud" do
  version "0.0.16"

  on_arm do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-arm64-#{version}.zip"
    sha256 "d9be0a6d162a6bf99e6c3c5694decaaa35611bc089634b2fef84c2f2d373f996"
  end

  on_intel do
    url "https://github.com/eboudrant/papa-stud/releases/download/v#{version}/PapaStud-darwin-x64-#{version}.zip"
    sha256 "706bb348ff7c44c83846b0fcafd3d3bdddab848bc7af81c58c3b4c69f170c87e"
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
