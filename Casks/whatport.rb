cask "whatport" do
  version "1.11.0"
  sha256 "8d5cb647c26154ba6ece5b9f679a68ba9446861ac361efcbbb8e29bfd3148e33"

  url "https://github.com/darrylmorley/whatport/releases/download/v#{version}/WhatPort.zip"
  name "WhatPort"
  desc "Menu bar app showing real-time USB-C port status (protocol, speed, power)"
  homepage "https://github.com/darrylmorley/whatport"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WhatPort.app"

  zap trash: [
    "~/Library/Application Support/WhatPort",
    "~/Library/Caches/app.whatport.whatport",
    "~/Library/HTTPStorages/app.whatport.whatport",
    "~/Library/Preferences/app.whatport.whatport.plist",
  ]
end
