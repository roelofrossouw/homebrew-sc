class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "fc0f7defec0507eda8901aa53bd998bfacb08cb45cf9c5f8d238b17b2d9bc080"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_CORE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
