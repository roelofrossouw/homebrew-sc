class SimplyCppAi < Formula
    desc "Wrappers for common AI tooling: ONNX, YOLO, and more"
    homepage "https://github.com/roelofrossouw/simply-cpp-ai"
    url "https://github.com/roelofrossouw/simply-cpp-ai/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "3565cde19598b0a0e6f16ca91b946b17a0e6ea272e9ec11dfd8b90f0833c7a41"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"
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
