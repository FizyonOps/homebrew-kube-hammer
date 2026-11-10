cask "kube-hammer" do
  arch arm: "arm64", intel: "x64"

  version "0.6.188"
  sha256 arm:   "81c8062c33e4e02fe3171b8ebccf5fc6b3de19df87caaa3e9378c58779f813ff",
         intel: "b2554d998a1c0f809bf374b7705bac901544aeefa39c1adf7216d5f49876a735"

  url "https://fizyonops-kube-hammer-490511245738-us-east-1-an.s3.us-east-1.amazonaws.com/kube-hammer/macos/#{arch}/Kube%20Hammer-#{version}-#{arch}.dmg",
      verified: "fizyonops-kube-hammer-490511245738-us-east-1-an.s3.us-east-1.amazonaws.com/kube-hammer/"
  name "Kube Hammer"
  desc "Kubernetes desktop with snapshots before every change, no account and zero telemetry"
  homepage "https://hammer.fizyonops.com/"

  livecheck do
    url "https://hammer.fizyonops.com/functions/v1/kube-hammer-app-update?platform=macos&arch=arm64"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Kube Hammer/Kube Hammer.app"

  zap trash: [
    "~/Library/Application Support/kube-hammer",
    "~/Library/Caches/com.electron.kube-hammer",
    "~/Library/Caches/com.electron.kube-hammer.ShipIt",
    "~/Library/HTTPStorages/com.electron.kube-hammer",
    "~/Library/Logs/kube-hammer",
    "~/Library/Preferences/com.electron.kube-hammer.plist",
    "~/Library/Saved Application State/com.electron.kube-hammer.savedState",
  ]
end
