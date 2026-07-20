cask "aptistockx" do
  version "3.0"
  sha256 "9b101dc9e61f0e4b6a5321edbfaf0520739fdb5ebfd6774b808248d6e30e7484"

  url "https://downloads.aptistock.com/#{version}/AptiStockX-#{version}-macOS-universal.dmg"
  name "AptiStockX"
  desc "Desktop stock analysis and portfolio research app"
  homepage "https://aptistock.com/"

  livecheck do
    url "https://aptistock.com/download"
    regex(/AptiStockX[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]universal\.dmg/i)
  end

  app "AptiStockX.app"

  zap trash: [
    "~/Library/Application Support/AptiStockX",
    "~/Library/Preferences/com.aptistock.aptistockx.plist",
    "~/Library/Saved Application State/com.aptistock.aptistockx.savedState",
  ]
end