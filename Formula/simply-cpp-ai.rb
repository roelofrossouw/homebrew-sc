class SimplyCppAi < Formula
    desc "Wrappers for common AI tooling: ONNX, YOLO, and more"
    homepage "https://github.com/roelofrossouw/simply-cpp-ai"
    url "https://github.com/roelofrossouw/simply-cpp-ai/archive/refs/tags/v2.5.1.tar.gz"
    sha256 "3b68fd749aea40eee730f4796aeccccc1c3fa23e6a6ae85c47b6b2beb156ecab"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-image"
    depends_on "simply-cpp-models"
    depends_on "simply-cpp-db"
    depends_on "onnxruntime"
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_AI_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
