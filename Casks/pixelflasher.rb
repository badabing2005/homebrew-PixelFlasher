cask "pixelflasher" do
  version "8.6.1.1"
  sha256 "aeb8715bba86699d03028a622f04efa40b63975508ab6f3beb0c5c2c457fafba"

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
