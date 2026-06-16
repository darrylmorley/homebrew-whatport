cask "whatport" do
  version "1.0.2"
  sha256 "14d4f5077181574a76752a4bb53c3fd19ea5b648db569dcf57ed82263b6cdeac"

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
