cask "pixelflasher" do
  version "8.14.3.0"
  sha256 "2ea0a4b92f46ac27dca6947b949b8d8412b33682a9211b46c259b7adc883fefb"

  url "https://github.com/badabing2005/PixelFlasher/releases/download/v#{version}/PixelFlasher_MacOS.dmg"
  name "PixelFlasher"
  desc "Pixel phone flashing GUI utility with features"
  homepage "https://github.com/badabing2005/PixelFlasher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "PixelFlasher.app"

  zap trash: [
    "~/Library/Application Support/PixelFlasher",
    "~/Library/Preferences/com.badabing.pixelflasher.plist",
    "~/Library/Saved Application State/com.badabing.pixelflasher.savedState",
  ]
end
