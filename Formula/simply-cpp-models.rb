class SimplyCPPModels < Formula
  desc "ONNX Models commonly used in Simply CPP"

  url "https://apt.roelof.co.za/hb/models/models_2026_09.tar.gz"
  sha256 "027b6d8ef67b9647580130a7da760f7bb2fb104b3c9ca9019a13aea709e15759"

  def install
    pkgshare.install Dir["*"]
  end
end