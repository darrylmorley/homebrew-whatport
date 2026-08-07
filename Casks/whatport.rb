cask "whatport" do
  version "1.7.1"
  sha256 "0ea6460d60cb5c6e76c7efa18ab4183ff1c7605788261a7d11ba149b8babafae"

  url "https://github.com/darrylmorley/whatport/releases/download/v#{version}/WhatPort.zip"
  name "WhatPort"
  desc "Menu bar app showing real-time USB-C port status (protocol, speed, power)"
  homepage "https://github.com/darrylmorley/whatport"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "WhatPort.app"

  zap trash: [
    "~/Library/Application Support/WhatPort",
    "~/Library/Caches/app.whatport.whatport",
    "~/Library/HTTPStorages/app.whatport.whatport",
    "~/Library/Preferences/app.whatport.whatport.plist",
  ]
end
