class SimplyCppModels < Formula
  desc "ONNX models used with simply-cpp-ai"

  url "https://apt.roelof.co.za/hb/models/models_2026_09.tar.gz"
  sha256 "d90fc728eb28a86e015f485440f9a1dd3de40a487a0fba1465ae0b198115c7bc"

  def install
    pkgshare.install Dir["*"]
  end
end
