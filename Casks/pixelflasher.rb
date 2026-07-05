cask "pixelflasher" do
  version "9.1.3.0"
  sha256 "e89d74446d5a9fe17c58d61f1267476939fb6a439eb687fd714a34d4238f29be"

  url "https://github.com/badabing2005/PixelFlasher/releases/download/v#{version}/PixelFlasher_MacOS.dmg"
  name "PixelFlasher"
  desc "Pixel phone flashing GUI utility with features"
  homepage "https://github.com/badabing2005/PixelFlasher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "PixelFlasher.app"

  zap trash: [
    "~/Library/Application Support/PixelFlasher",
    "~/Library/Preferences/com.badabing.pixelflasher.plist",
    "~/Library/Saved Application State/com.badabing.pixelflasher.savedState",
  ]
end
