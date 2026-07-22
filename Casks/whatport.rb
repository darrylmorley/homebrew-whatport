cask "whatport" do
  version "1.5.0"
  sha256 "3e184d7ba3e186cdc27c6c16ba46d41bac7d2461f78917ab6beaaf2536ee7dc2"

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
