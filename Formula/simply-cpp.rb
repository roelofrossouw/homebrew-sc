class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v1.26.1.tar.gz"
    sha256 "439fd6b5c2fcc00e6f82f4fe0dacb2fa3ea0e509be4908a2e852f9ec765822d1"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_CORE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
