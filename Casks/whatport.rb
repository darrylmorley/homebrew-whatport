cask "whatport" do
  version "1.1.1"
  sha256 "b5d7f6adc3b821e673425780a4f9ffe3d27675cf7fbe4a74c8b14aafa760861b"

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
