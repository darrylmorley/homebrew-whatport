cask "whatport" do
  version "1.1.2"
  sha256 "ba165d1dc362cc9397526a95e4e9294b177259810e9038eab69fe904c7f6009b"

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
