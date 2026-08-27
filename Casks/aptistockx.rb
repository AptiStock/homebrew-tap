cask "aptistockx" do
  version "3.1.0"
  sha256 "68c04d29f73615d27cc02121d8cf48648da5e3dc1234a486b516c170d8d7db10"

  url "https://downloads.aptistock.com/3.1/AptiStockX-#{version}-macOS-universal.dmg"
  name "AptiStockX"
  desc "Desktop stock analysis and portfolio research app"
  homepage "https://aptistock.com/"

  livecheck do
    url "https://aptistock.com/download"
    regex(/AptiStockX[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]universal\.dmg/i)
  end

  depends_on :macos

  app "AptiStockX.app"

  zap trash: [
    "~/Library/Application Support/AptiStockX",
    "~/Library/Preferences/com.aptistock.aptistockx.plist",
    "~/Library/Saved Application State/com.aptistock.aptistockx.savedState",
  ]
end
