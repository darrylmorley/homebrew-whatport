cask "whatport" do
  version "1.0.1"
  sha256 "f2f095578ecc50f4e538b3bd6758d7737c04694576b3f3a62deaa7df6e51f78d"

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
