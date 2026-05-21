cask "whatport" do
  version "1.0.0"
  sha256 "ea60167c85365f4151ebea86bef26a3b76ab8242412a74150c0078fd62fdd472"

  url "https://github.com/darrylmorley/whatport/releases/download/v#{version}/WhatPort.zip"
  name "WhatPort"
  desc "Menu bar app showing real-time USB-C port status (protocol, speed, power)"
  homepage "https://github.com/darrylmorley/whatport"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WhatPort.app"

  zap trash: [
    "~/Library/Preferences/uk.whatport.whatport.plist",
    "~/Library/Application Support/WhatPort",
    "~/Library/Caches/uk.whatport.whatport",
    "~/Library/HTTPStorages/uk.whatport.whatport",
  ]
end
