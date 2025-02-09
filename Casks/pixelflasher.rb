cask "pixelflasher" do
  version "7.9.3.1"
  sha256 "d813e32179cbaaf70bb1b4b60dbd70e2f36e1a561820a931d3b4eead3e37d62f"

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
