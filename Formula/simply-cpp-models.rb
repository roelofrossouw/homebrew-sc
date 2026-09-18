class SimplyCppModels < Formula
  desc "ONNX models used with simply-cpp-ai"

  url "https://apt.roelof.co.za/hb/models/models_2026_09.tar.gz"
  sha256 "8ffb1ffb30117b8bfa9bebd04b82a4ef371b6b5848551f81d199cd980b1c8925"

  def install
    pkgshare.install Dir["*"]
  end
end
