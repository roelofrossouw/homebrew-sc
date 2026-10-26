class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v1.24.0.tar.gz"
    sha256 "7178325e22fd523c4d367b2a772d9cb8efb282c76b3d706e24b1ce40799ac1dc"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_CORE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
