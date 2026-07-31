cask "whatport" do
  version "1.6.0"
  sha256 "936478394674c2f69c541949a34dccd68dd5d413d5e177c569e4a7d4b65fe23e"

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
