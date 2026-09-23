class SimplyCppAi < Formula
    desc "Wrappers for common AI tooling: ONNX, YOLO, and more"
    homepage "https://github.com/roelofrossouw/simply-cpp-ai"
    url "https://github.com/roelofrossouw/simply-cpp-ai/archive/refs/tags/v1.0.11.tar.gz"
    sha256 "c73479cffe72621ed6ef5dcf8657d8acd762329f7fd3ba14b11db7dc0d2b4b4d"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-image"
    depends_on "simply-cpp-models"
    depends_on "onnxruntime"
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
