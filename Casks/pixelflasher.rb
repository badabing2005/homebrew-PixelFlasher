cask "pixelflasher" do
  version "8.4.0.1"
  sha256 "7fd8827cbe621e69481d0e2be14d14aa6b0652b30f952ea2382385dc4dabf801"

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
