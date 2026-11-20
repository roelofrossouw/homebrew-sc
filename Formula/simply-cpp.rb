class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v3.0.2.tar.gz"
    sha256 "0b505f17646eeb241d7ae8092d8d9af673dec80facd70b610913bb3bd3223998"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "nlohmann-json"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_CORE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
