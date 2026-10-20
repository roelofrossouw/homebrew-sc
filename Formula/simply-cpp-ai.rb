class SimplyCppAi < Formula
    desc "Wrappers for common AI tooling: ONNX, YOLO, and more"
    homepage "https://github.com/roelofrossouw/simply-cpp-ai"
    url "https://github.com/roelofrossouw/simply-cpp-ai/archive/refs/tags/v2.2.1.tar.gz"
    sha256 "5276a5623e78c18b48f860ecf251e7a6335391cff1c16abc72ed06bf4b413322"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-image"
    depends_on "simply-cpp-models"
    depends_on "simply-cpp-db"
    depends_on "onnxruntime"
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
