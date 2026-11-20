class SimplyCppAi < Formula
    desc "Wrappers for common AI tooling: ONNX, YOLO, and more"
    homepage "https://github.com/roelofrossouw/simply-cpp-ai"
    url "https://github.com/roelofrossouw/simply-cpp-ai/archive/refs/tags/v3.0.2.tar.gz"
    sha256 "a0aca61cc836a5718a2429b87808e64bd8060b3c7e11e9a6547656414acbdb59"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-image"
    depends_on "simply-cpp-models"
    depends_on "onnxruntime"
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_AI_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
